# Come installare Home Assistant con Docker su Windows
# Sezione / Section: Passo 3 — Verifica che Docker sia pronto
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html

docker version
docker info

# Se hai appena avviato Docker Desktop, il motore puo' metterci un po': questo ciclo aspetta
# fino a 2 minuti e mezzo prima di arrendersi
$ok = $false
for ($i = 0; $i -lt 30 -and -not $ok; $i++) {
    Start-Sleep 5
    docker info *> $null
    if ($LASTEXITCODE -eq 0) { $ok = $true }
}
if ($ok) { Write-Host 'Docker pronto.' -ForegroundColor Green }
else { throw 'Docker non risponde: apri Docker Desktop dal menu Start e controlla che l''icona nella barra sia verde.' }
