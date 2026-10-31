# Google TV in Home Assistant: Android TV Remote, Google Cast e ADB insieme
# Sezione / Section: Screenshot dello schermo con ADB
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html

import sys
from PIL import Image

Image.open(sys.argv[1]).convert('RGB').save(sys.argv[2], 'JPEG', quality=85)
