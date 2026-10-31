# Le TV Android in Home Assistant: cosa offre l'integrazione Android TV Remote, come lanciare le app e la scheda con due pulsanti di prova
# Sezione / Section: La mia scheda «Android TV Remote»
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/android-tv-remote-home-assistant.html

$tvEnt = $entReg | Where-Object {
    $_.platform -eq 'androidtv_remote' -and -not $_.disabled_by
}
if (-not $tvEnt -or $tvEnt.Count -eq 0) {
    throw "Nessuna entita con platform 'androidtv_remote' trovata nel registro."
}
