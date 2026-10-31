# Il server di casa non deve restare spento: riaccensione automatica, Wake-on-LAN e allarme esterno
# Sezione / Section: Livello 2 · Wake-on-LAN: svegliarlo dalla rete
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html

# 1. La scheda accetta il pacchetto magico
Set-NetAdapterAdvancedProperty -Name "Ethernet" -DisplayName "Wake on Magic Packet" -DisplayValue "Enabled"

# 2. Il collegamento resta attivo anche a PC spento
Set-NetAdapterAdvancedProperty -Name "Ethernet" -DisplayName "Energy-Efficient Ethernet" -DisplayValue "Disabled"

# 3. Niente ibernazione: spegne anche l'avvio rapido
powercfg /hibernate off
