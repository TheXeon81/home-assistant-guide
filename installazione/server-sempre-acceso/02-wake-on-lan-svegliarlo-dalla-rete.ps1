# Il server di casa non deve restare spento: riaccensione automatica, Wake-on-LAN e allarme esterno
# Sezione / Section: Livello 2 · Wake-on-LAN: svegliarlo dalla rete
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html

Get-NetAdapterAdvancedProperty -Name "Ethernet" | Format-Table DisplayName, DisplayValue
