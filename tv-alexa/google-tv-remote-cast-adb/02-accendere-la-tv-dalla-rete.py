# Google TV in Home Assistant: Android TV Remote, Google Cast e ADB insieme
# Sezione / Section: Accendere la TV dalla rete
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html

#!/usr/bin/env python3
# Uso: wol.py <MAC-TV> <BROADCAST-LAN>
import socket, sys

mac = bytes.fromhex(sys.argv[1].replace(':', '').replace('-', ''))
pacchetto = b'\xff' * 6 + mac * 16
with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s:
    s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
    s.sendto(pacchetto, (sys.argv[2], 9))
