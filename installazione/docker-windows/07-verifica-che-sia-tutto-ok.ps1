# Come installare Home Assistant con Docker su Windows
# Sezione / Section: Passo 7 — Verifica che sia tutto ok
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html

# 1. Il container e' in esecuzione?
docker ps --filter name=homeassistant

# 2. Gli ultimi log (al primo avvio Home Assistant impiega circa 1-2 minuti a preparare il database)
docker logs --tail 50 homeassistant

# 3. L'interfaccia risponde? Ciclo di attesa fino a 2 minuti
$up = $false
for ($i = 0; $i -lt 24 -and -not $up; $i++) {
    Start-Sleep 5
    try { Invoke-WebRequest 'http://localhost:8123' -UseBasicParsing -TimeoutSec 5 | Out-Null; $up = $true }
    catch { if ($_.Exception.Response) { $up = $true } }
}
if ($up) { Write-Host 'Home Assistant e'' su: apri http://localhost:8123' -ForegroundColor Green }
else { Write-Warning 'Non risponde ancora dopo 2 minuti: guarda "docker logs homeassistant" per capire a che punto si e'' fermato.' }
