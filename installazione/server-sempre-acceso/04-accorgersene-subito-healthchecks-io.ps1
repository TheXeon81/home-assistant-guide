# Il server di casa non deve restare spento: riaccensione automatica, Wake-on-LAN e allarme esterno
# Sezione / Section: Accorgersene subito: Healthchecks.io
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html

schtasks /Create /TN "Healthchecks PC" /SC MINUTE /MO 1 /RU SYSTEM /F /TR "curl.exe -fsS -m 10 --retry 3 -o NUL https://hc-ping.com/IL-TUO-CODICE"
