# Google TV in Home Assistant: Android TV Remote, Google Cast e ADB insieme

Nessuna integrazione da sola controlla bene una Google TV: Android TV Remote per stato e accensione, Google Cast per volume preciso e sintesi vocale, ADB per app e screenshot. Con Home Assistant in Docker, Wake-on-LAN e i problemi che ho incontrato.

📖 **Guida completa:** [lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html](https://www.lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html)

| File | Sezione della guida |
|---|---|
| [`01-l-url-interno-di-home-assistant.yaml`](01-l-url-interno-di-home-assistant.yaml) | L'URL interno di Home Assistant |
| [`02-accendere-la-tv-dalla-rete.py`](02-accendere-la-tv-dalla-rete.py) | Accendere la TV dalla rete |
| [`03-accendere-la-tv-dalla-rete.yaml`](03-accendere-la-tv-dalla-rete.yaml) | Accendere la TV dalla rete |
| [`04-aprire-le-app.yaml`](04-aprire-le-app.yaml) | Aprire le app |
| [`05-aprire-le-app.txt`](05-aprire-le-app.txt) | Aprire le app |
| [`06-screenshot-dello-schermo-con-adb.yaml`](06-screenshot-dello-schermo-con-adb.yaml) | Screenshot dello schermo con ADB |
| [`07-screenshot-dello-schermo-con-adb.py`](07-screenshot-dello-schermo-con-adb.py) | Screenshot dello schermo con ADB |
| [`08-adb-caduto-dopo-la-riaccensione.yaml`](08-adb-caduto-dopo-la-riaccensione.yaml) | ADB caduto dopo la riaccensione |

I file sono i blocchi di codice della guida, nello stesso ordine. Nomi delle entità e commenti sono quelli del mio impianto: adattali al tuo prima di usarli.

---

## 🇬🇧 English

**Google TV in Home Assistant: Android TV Remote, Google Cast and ADB together**

Android TV Remote for state and power, Google Cast for precise volume and TTS, ADB for apps and screenshots. With Home Assistant in Docker and Wake-on-LAN.

📖 **Full guide (in Italian):** [lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html](https://www.lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html)

The files above are the code blocks of the guide, in the same order. Entity names and comments are in Italian, as in my setup: adapt them to yours before use.
