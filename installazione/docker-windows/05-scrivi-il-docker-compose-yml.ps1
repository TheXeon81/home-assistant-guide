# Come installare Home Assistant con Docker su Windows
# Sezione / Section: Passo 5 — Scrivi il docker-compose.yml
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html

$compose = @'
name: homeassistant

services:
  homeassistant:
    image: ghcr.io/home-assistant/home-assistant:stable
    container_name: homeassistant
    restart: unless-stopped
    ports:
      - "8123:8123"
    volumes:
      - ./config:/config
    environment:
      TZ: Europe/Rome
'@
$utf8 = New-Object System.Text.UTF8Encoding($false)
[IO.File]::WriteAllText("$Dirdocker-compose.yml", $compose, $utf8)
Write-Host "Scritto: $Dirdocker-compose.yml"
