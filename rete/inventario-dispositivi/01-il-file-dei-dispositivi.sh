# Un inventario dei dispositivi di casa in Home Assistant: file CSV, rete, garanzie e avvisi sui dispositivi nuovi o spariti
# Sezione / Section: Il file dei dispositivi
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/inventario-dispositivi-home-assistant.html

# dentro il container di Home Assistant (chiudi prima il file in Excel)
python3 /config/scripts/inventario.py --init         # crea dispositivi.csv dai dispositivi in rete
python3 /config/scripts/inventario.py --aggiungi     # aggiunge quelli in rete che non ci sono ancora
python3 /config/scripts/inventario.py --aggiungi --tutti   # include anche i telefoni con MAC casuale
