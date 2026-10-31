# Le telecamere Arlo in Home Assistant: scheda con anteprima e diretta, armare l'impianto e avvisi di movimento e batteria
# Sezione / Section: Gli avvisi
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/telecamere-arlo-home-assistant.html

foreach ($cam in 'CAM1', 'CAM2') {
    $slug = $cam.ToLower()
    # per ogni telecamera: un menu dei canali per il movimento e uno per la batteria
    #   input_select.arlo_movimento_$slug   input_select.arlo_batteria_$slug
    # e due automazioni con  evento: arlo_movimento_$slug  /  arlo_batteria_$slug
}
