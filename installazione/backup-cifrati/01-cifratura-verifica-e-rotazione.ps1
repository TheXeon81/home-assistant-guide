# Backup notturni cifrati di Home Assistant, OpenWA e Omada su Docker, con verifica, rotazione e stato in dashboard
# Sezione / Section: Cifratura, verifica e rotazione
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/backup-cifrati-home-assistant-docker.html

$archive = Join-Path $Dest "srv-home-$stamp.7z"
& $SevenZip a -t7z -mx=3 -mhe=on "-p$pass" $archive "$Work\*" | Out-Null
& $SevenZip t "-p$pass" $archive | Out-Null                      # verifica di integrità

Get-ChildItem $Dest -Filter 'srv-home-*.7z' | Sort-Object LastWriteTime -Descending |
    Select-Object -Skip $Keep | ForEach-Object {
        Remove-Item $_.FullName -Force
        Log "Rimosso vecchio backup: $($_.Name)"
    }
