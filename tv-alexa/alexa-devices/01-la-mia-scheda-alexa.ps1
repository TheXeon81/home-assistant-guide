# I dispositivi Alexa in Home Assistant: cosa offre l'integrazione Alexa Devices e come costruire una scheda con un pulsante di prova
# Sezione / Section: La mia scheda «Alexa»
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/alexa-devices-home-assistant.html

$alexaEnt = $entReg | Where-Object {
    $_.platform -eq 'alexa_devices' -and -not $_.disabled_by
}
if (-not $alexaEnt -or $alexaEnt.Count -eq 0) {
    throw "Nessuna entita con platform 'alexa_devices' trovata nel registro."
}
$byDevice = $alexaEnt | Group-Object device_id
