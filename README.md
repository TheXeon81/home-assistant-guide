🇮🇹 **Italiano** · 🇬🇧 [English](README.en.md)

# Home Assistant: il codice delle mie guide

[![Guide](https://img.shields.io/badge/guide-31-41BDF5?logo=homeassistant&logoColor=white)](https://www.lucianoblancato.it/home-assistant/index.html)
[![Licenza MIT](https://img.shields.io/badge/licenza-MIT-green)](LICENSE)

YAML, script Python e PowerShell pronti da copiare, presi dalle guide su Home Assistant che pubblico su **[lucianoblancato.it/home-assistant](https://www.lucianoblancato.it/home-assistant/index.html)**. Sono le automazioni, i template e le schede del mio impianto: Home Assistant in Docker su un mini PC Windows, notifiche e comandi su WhatsApp, telecamere Arlo e Blink, Smart Life, Google TV, Alexa e altro.

Qui trovi solo il codice. Spiegazioni, schermate, errori incontrati e domande frequenti sono nelle guide sul sito: ogni cartella ha il link alla sua.

**31 guide, 27 con codice, 118 file.**

## Come usarlo

1. Apri la cartella dell'argomento e la guida che ti interessa: il `README` della cartella elenca i file nell'ordine della guida.
2. Copia il blocco nel tuo `configuration.yaml`, in un [package](https://www.home-assistant.io/docs/configuration/packages/) o nella dashboard, secondo quello che dice la guida.
3. Rinomina le entità come nel tuo impianto. Token, password e numeri di telefono vanno in [`secrets.yaml`](https://www.home-assistant.io/docs/configuration/secrets/) e mai nel codice.
4. Controlla la configurazione (**Strumenti per sviluppatori → YAML → Verifica configurazione**) prima di riavviare.

## Indice per argomento

### 🖥️ Installazione e server

| Guida | Codice | Sul sito |
|---|---|---|
| Come installare Home Assistant con Docker su Windows | [📁 `installazione/docker-windows`](installazione/docker-windows) | [Guida](https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html) |
| Monitorare il mini PC che ospita Home Assistant: sensori, avvisi e accesso da fuori casa | [📁 `installazione/monitorare-mini-pc`](installazione/monitorare-mini-pc) | [Guida](https://www.lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html) |
| Backup notturni cifrati di Home Assistant, OpenWA e Omada su Docker, con verifica, rotazione e stato in dashboard | [📁 `installazione/backup-cifrati`](installazione/backup-cifrati) | [Guida](https://www.lucianoblancato.it/home-assistant/backup-cifrati-home-assistant-docker.html) |
| Il server di casa non deve restare spento: riaccensione automatica, Wake-on-LAN e allarme esterno | [📁 `installazione/server-sempre-acceso`](installazione/server-sempre-acceso) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html) |

### 📶 Rete e dispositivi

| Guida | Codice | Sul sito |
|---|---|---|
| Portare gli access point Omada in Home Assistant: client, traffico e avvisi | [📁 `rete/wifi-omada`](rete/wifi-omada) | [Guida](https://www.lucianoblancato.it/home-assistant/wifi-omada-home-assistant.html) |
| Home Assistant e Omada: un setup che si corregge dalla dashboard | — | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-omada-setup-dashboard.html) |
| Un monitor di rete in Home Assistant: router, access point, Internet e DNS, con registro delle interruzioni e log del router | [📁 `rete/monitor-rete-syslog`](rete/monitor-rete-syslog) | [Guida](https://www.lucianoblancato.it/home-assistant/monitor-rete-router-syslog-home-assistant.html) |
| Un inventario dei dispositivi di casa in Home Assistant: file CSV, rete, garanzie e avvisi sui dispositivi nuovi o spariti | [📁 `rete/inventario-dispositivi`](rete/inventario-dispositivi) | [Guida](https://www.lucianoblancato.it/home-assistant/inventario-dispositivi-home-assistant.html) |

### 💬 WhatsApp e notifiche

| Guida | Codice | Sul sito |
|---|---|---|
| Avvisi di Home Assistant su WhatsApp, email e app: un solo script, tre canali e un menu per scegliere | [📁 `whatsapp/tre-canali-avvisi`](whatsapp/tre-canali-avvisi) | [Guida](https://www.lucianoblancato.it/home-assistant/messaggi-whatsapp-email-notifiche-home-assistant.html) |
| Notifiche WhatsApp da Home Assistant: da una riga di testo a messaggi veri | [📁 `whatsapp/notifiche-formattate`](whatsapp/notifiche-formattate) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-notifiche-whatsapp-formattate.html) |
| WhatsApp di casa con Home Assistant: chi può scrivere, mittenti autorizzati e limite giornaliero | [📁 `whatsapp/mittenti-autorizzati`](whatsapp/mittenti-autorizzati) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-whatsapp-mittenti-autorizzati.html) |
| Avvisi WhatsApp su misura: ruoli Admin e Utente con categorie | — | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-whatsapp-ruoli-admin-utente.html) |

### 🛒 Lista della spesa

| Guida | Codice | Sul sito |
|---|---|---|
| La lista della spesa in Home Assistant: Google Keep Sync installato con un commit fissato e comandi da WhatsApp | [📁 `lista-spesa/google-keep-sync`](lista-spesa/google-keep-sync) | [Guida](https://www.lucianoblancato.it/home-assistant/lista-spesa-google-keep-home-assistant.html) |
| Lista della spesa con Home Assistant: WhatsApp, vocali, Alexa e Google in un'unica nota | [📁 `lista-spesa/whatsapp-vocali-alexa`](lista-spesa/whatsapp-vocali-alexa) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-lista-spesa-whatsapp-vocali-alexa.html) |
| Lista della spesa senza doppioni in Home Assistant: già presente, spuntato o nuovo | [📁 `lista-spesa/senza-doppioni`](lista-spesa/senza-doppioni) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-lista-spesa-senza-doppioni.html) |

### 📷 Telecamere Arlo e Blink

| Guida | Codice | Sul sito |
|---|---|---|
| Le telecamere Arlo in Home Assistant: scheda con anteprima e diretta, armare l'impianto e avvisi di movimento e batteria | [📁 `telecamere/arlo-scheda-avvisi`](telecamere/arlo-scheda-avvisi) | [Guida](https://www.lucianoblancato.it/home-assistant/telecamere-arlo-home-assistant.html) |
| Le telecamere Blink in Home Assistant: scheda automatica, pulsanti «Aggiorna ora» senza sprecare la batteria e avviso di batteria scarica | — | [Guida](https://www.lucianoblancato.it/home-assistant/telecamere-blink-home-assistant.html) |
| Telecamere su WhatsApp con Home Assistant: foto negli avvisi e scatti a richiesta | [📁 `telecamere/foto-su-whatsapp`](telecamere/foto-su-whatsapp) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-telecamere-whatsapp-foto.html) |
| Movimento in casa? La foto arriva su WhatsApp, solo dalle telecamere che scegli tu | — | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-movimento-telecamere-whatsapp.html) |
| Blink sempre armato: riarmo automatico, comandi WhatsApp e avvisi con Home Assistant | [📁 `telecamere/blink-riarmo-automatico`](telecamere/blink-riarmo-automatico) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-blink-riarmo-automatico-whatsapp.html) |
| Telecamere Arlo in Home Assistant: quando la foto «nuova» è di due giorni fa (e come accorgersene) | [📁 `telecamere/arlo-foto-non-aggiornata`](telecamere/arlo-foto-non-aggiornata) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-arlo-foto-non-aggiornata-base-offline.html) |

### 🤖 Robot aspirapolvere

| Guida | Codice | Sul sito |
|---|---|---|
| Il robot aspirapolvere Dreame in Home Assistant: una scheda con tutte le entità ordinate per tipo e avvisi su consumabili ed errori | [📁 `robot/dreame-scheda`](robot/dreame-scheda) | [Guida](https://www.lucianoblancato.it/home-assistant/robot-aspirapolvere-dreame-home-assistant.html) |
| Il robot aspirapolvere Dreame su WhatsApp con Home Assistant: avvisi con immagini e comandi | [📁 `robot/dreame-whatsapp`](robot/dreame-whatsapp) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-robot-dreame-whatsapp.html) |

### 💡 Smart Life e Tuya

| Guida | Codice | Sul sito |
|---|---|---|
| Smart Life in Home Assistant: collegare l'app Tuya senza password e correggere le prese che misurano per dieci | [📁 `smart-life/collegare-tuya`](smart-life/collegare-tuya) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-smart-life-tuya.html) |
| Smart Life su WhatsApp: comandare luci, prese, clima e scene di casa con un messaggio (e decidere chi può farlo) | [📁 `smart-life/whatsapp-comandi-permessi`](smart-life/whatsapp-comandi-permessi) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-smart-life-whatsapp-comandi-permessi.html) |

### 📺 TV e Alexa

| Guida | Codice | Sul sito |
|---|---|---|
| Le TV Android in Home Assistant: cosa offre l'integrazione Android TV Remote, come lanciare le app e la scheda con due pulsanti di prova | [📁 `tv-alexa/android-tv-remote`](tv-alexa/android-tv-remote) | [Guida](https://www.lucianoblancato.it/home-assistant/android-tv-remote-home-assistant.html) |
| Google TV in Home Assistant: Android TV Remote, Google Cast e ADB insieme | [📁 `tv-alexa/google-tv-remote-cast-adb`](tv-alexa/google-tv-remote-cast-adb) | [Guida](https://www.lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html) |
| Comandare la Google TV da WhatsApp con Home Assistant | [📁 `tv-alexa/google-tv-whatsapp`](tv-alexa/google-tv-whatsapp) | [Guida](https://www.lucianoblancato.it/home-assistant/home-assistant-google-tv-whatsapp.html) |
| I dispositivi Alexa in Home Assistant: cosa offre l'integrazione Alexa Devices e come costruire una scheda con un pulsante di prova | [📁 `tv-alexa/alexa-devices`](tv-alexa/alexa-devices) | [Guida](https://www.lucianoblancato.it/home-assistant/alexa-devices-home-assistant.html) |

### 🏠 Stampante e meteo

| Guida | Codice | Sul sito |
|---|---|---|
| La stampante in Home Assistant: stato con IPP, toner, tamburo e fusore via SNMP e un avviso prima che finiscano | [📁 `casa/stampante-snmp`](casa/stampante-snmp) | [Guida](https://www.lucianoblancato.it/home-assistant/stampante-toner-snmp-home-assistant.html) |
| La scheda Meteo di Home Assistant con Met.no: condizioni attuali, previsioni orarie e giornaliere, sole e dettagli in tre colonne | [📁 `casa/meteo-met-no`](casa/meteo-met-no) | [Guida](https://www.lucianoblancato.it/home-assistant/meteo-met-no-home-assistant.html) |

## Chi sono

Sono [Luciano Blancato](https://www.lucianoblancato.it/chi-sono.html): IT Manager da oltre 15 anni, nell'informatica da oltre 30. Queste guide raccontano l'impianto di casa mia, con gli errori compresi.

## Segnalazioni

Un blocco non funziona più con la tua versione di Home Assistant? Apri una [issue](../../issues) indicando la cartella e la versione. Le correzioni le faccio nella guida sul sito e poi rigenero il repo, così le due versioni restano uguali.

## Licenza

Il codice è distribuito con licenza [MIT](LICENSE). I testi delle guide restano sul sito.
