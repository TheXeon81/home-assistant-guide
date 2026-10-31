# Il robot aspirapolvere Dreame su WhatsApp con Home Assistant: avvisi con immagini e comandi
# Sezione / Section: Lo sfondo nero
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/home-assistant-robot-dreame-whatsapp.html

img = Image.open(io.BytesIO(dati)).convert("RGBA")
fondo = Image.new("RGB", img.size, (255, 255, 255))
fondo.paste(img, mask=img.split()[-1])
fondo.save(out, "JPEG", quality=90)
