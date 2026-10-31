# Comandare la Google TV da WhatsApp con Home Assistant
# Sezione / Section: Le trappole dei template
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/home-assistant-google-tv-whatsapp.html

import json, os, sys, time

foto = sys.argv[1]
if not os.path.exists(foto) or time.time() - os.path.getmtime(foto) > 120:
    print(json.dumps({"ok": False, "errore": "foto non aggiornata"}))
    sys.exit(0)
print(json.dumps({"ok": True, "file": foto}))
