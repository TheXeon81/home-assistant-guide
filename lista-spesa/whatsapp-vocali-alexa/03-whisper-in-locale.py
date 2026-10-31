# Lista della spesa con Home Assistant: WhatsApp, vocali, Alexa e Google in un'unica nota
# Sezione / Section: Whisper in locale
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/home-assistant-lista-spesa-whatsapp-vocali-alexa.html

async with AsyncTcpClient("whisper", 10300) as client:
    await client.write_event(Transcribe(language="it").event())
    await client.write_event(AudioStart(rate=16000, width=2, channels=1).event())
    # ... i pezzi di audio ...
    await client.write_event(AudioStop().event())
