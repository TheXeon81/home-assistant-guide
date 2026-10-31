# Il robot aspirapolvere Dreame in Home Assistant: una scheda con tutte le entità ordinate per tipo e avvisi su consumabili ed errori
# Sezione / Section: Seconda versione: tutte le entità, per tipo
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/robot-aspirapolvere-dreame-home-assistant.html

$tutte = @($reg.data.entities | Where-Object { $_.device_id -eq $vac.device_id -and -not $_.disabled_by })

# per dominio, senza nomi indovinati
$comandi      = $tutte | Where-Object { $_.entity_id -like 'button.*' }
$interruttori = $tutte | Where-Object { $_.entity_id -like 'switch.*' }
$impostazioni = $tutte | Where-Object { $_.entity_id -match '^(select|number)\.' }
$stato        = $tutte | Where-Object { $_.entity_id -like 'binary_sensor.*' }
$statistiche  = $tutte | Where-Object { $_.entity_id -like 'sensor.*' }
$mappa        = $tutte | Where-Object { $_.entity_id -like 'camera.*' } | Select-Object -First 1
