# Monitorare il mini PC che ospita Home Assistant: sensori, avvisi e accesso da fuori casa
# Sezione / Section: Passo 2: dopo un riavvio, Docker e i container ripartono da soli
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html

# docker-watchdog.ps1: lanciato al logon e ogni 5 minuti
$log = 'C:\srv-home\logs\docker-watchdog.log'
function Log($m) { "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')  $m" | Add-Content $log }
function DockerOk { try { $null = docker info 2>&1; return ($LASTEXITCODE -eq 0) } catch { return $false } }

if (-not (DockerOk)) {
    if (-not (Get-Process 'Docker Desktop' -ErrorAction SilentlyContinue)) {
        Log 'Docker Desktop non in esecuzione: lo avvio'
        Start-Process "$env:ProgramFiles\Docker\Docker\Docker Desktop.exe"
    }
    $ok = $false
    for ($i = 0; $i -lt 60; $i++) { Start-Sleep 5; if (DockerOk) { $ok = $true; break } }
    if ($ok) { Start-Sleep 20; Log "Docker pronto, container in esecuzione: $(@(docker ps -q).Count)" }
    else     { Log 'ERRORE: Docker non risponde dopo 5 minuti' }
}
