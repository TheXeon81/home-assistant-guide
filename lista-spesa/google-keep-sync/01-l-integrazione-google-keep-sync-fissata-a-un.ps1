# La lista della spesa in Home Assistant: Google Keep Sync installato con un commit fissato e comandi da WhatsApp
# Sezione / Section: L'integrazione: Google Keep Sync, fissata a un commit
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/lista-spesa-google-keep-home-assistant.html

# parametro -Commit: hash completo di 40 caratteri, non un tag né "main"
$url = "https://codeload.github.com/watkins-matt/home-assistant-google-keep-sync/zip/$Commit"
Invoke-WebRequest -Uri $url -OutFile $zip -UseBasicParsing -TimeoutSec 120
Write-Host "SHA256: $((Get-FileHash $zip -Algorithm SHA256).Hash)"

$m = Get-Content "$comp\manifest.json" -Raw | ConvertFrom-Json
if ($m.domain -ne 'google_keep_sync') { throw "Dominio inatteso: $($m.domain)" }
$expected = 'gpsoauth==2.0.0', 'gkeepapi==0.17.1'
foreach ($r in $m.requirements) {
    if ($expected -notcontains $r) { throw "Dipendenza inattesa: $r" }
}
