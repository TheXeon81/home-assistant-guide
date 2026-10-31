# Come installare Home Assistant con Docker su Windows
# Sezione / Section: Apri l'accesso dalla rete locale (opzionale)
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html

New-NetFirewallRule -DisplayName 'Home Assistant 8123' -Direction Inbound -Protocol TCP `
    -LocalPort 8123 -Action Allow -Profile Private | Out-Null

$ip = (Get-NetIPAddress -AddressFamily IPv4 |
    Where-Object { $_.IPAddress -notmatch '^(127|169.254)' -and $_.PrefixOrigin -ne 'WellKnown' } |
    Select-Object -First 1).IPAddress
Write-Host "Raggiungibile in LAN su: http://$ip`:8123"
