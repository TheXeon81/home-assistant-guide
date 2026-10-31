# Come installare Home Assistant con Docker su Windows
# Sezione / Section: Passo 6 — Avvia il container
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html

docker compose -f "$Dirdocker-compose.yml" up -d
if ($LASTEXITCODE -ne 0) { throw 'docker compose non e'' riuscito: controlla l''errore qui sopra.' }
