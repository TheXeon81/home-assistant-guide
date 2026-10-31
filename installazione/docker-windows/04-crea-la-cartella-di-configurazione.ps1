# Come installare Home Assistant con Docker su Windows
# Sezione / Section: Passo 4 — Crea la cartella di configurazione
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html

$Dir = 'C:dockerhomeassistant'
New-Item -ItemType Directory -Force "$Dirconfig" | Out-Null
Write-Host "Cartella pronta: $Dirconfig"
