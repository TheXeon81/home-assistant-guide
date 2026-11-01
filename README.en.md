🇮🇹 [Italiano](README.md) · 🇬🇧 **English**

# Home Assistant: the code from my guides

[![Guides](https://img.shields.io/badge/guides-32-41BDF5?logo=homeassistant&logoColor=white)](https://www.lucianoblancato.it/home-assistant/index.html)
[![License MIT](https://img.shields.io/badge/license-MIT-green)](LICENSE)

Ready-to-copy YAML, Python and PowerShell taken from the Home Assistant guides I publish (in Italian) on **[lucianoblancato.it/home-assistant](https://www.lucianoblancato.it/home-assistant/index.html)**. These are the automations, templates and dashboard cards of my own setup: Home Assistant in Docker on a Windows mini PC, notifications and commands over WhatsApp, Arlo and Blink cameras, Smart Life, Google TV, Alexa and more.

This repository holds the code only. Explanations, screenshots, mistakes along the way and FAQs are in the guides on the site: every folder links to its guide. The guides are in Italian; your browser's translator works well on them.

**32 guides, 28 with code, 122 files.**

## How to use it

1. Open the topic folder and the guide you need: the folder `README` lists the files in the order of the guide.
2. Copy the block into your `configuration.yaml`, a [package](https://www.home-assistant.io/docs/configuration/packages/) or the dashboard, as the guide explains.
3. Rename entities to match your setup. Tokens, passwords and phone numbers go in [`secrets.yaml`](https://www.home-assistant.io/docs/configuration/secrets/), never in the code.
4. Check the configuration (**Developer tools → YAML → Check configuration**) before restarting.

Entity names, comments and WhatsApp commands are in Italian, as in my setup.

## Index by topic

### 🖥️ Installation and server

| Guide | Code | On the site |
|---|---|---|
| How to install Home Assistant with Docker on Windows | [📁 `installazione/docker-windows`](installazione/docker-windows) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html) |
| Monitoring the mini PC that runs Home Assistant: sensors, alerts and remote access | [📁 `installazione/monitorare-mini-pc`](installazione/monitorare-mini-pc) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html) |
| Encrypted nightly backups of Home Assistant, OpenWA and Omada on Docker | [📁 `installazione/backup-cifrati`](installazione/backup-cifrati) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/backup-cifrati-home-assistant-docker.html) |
| The home server must not stay off: auto power-on, Wake-on-LAN and an external alarm | [📁 `installazione/server-sempre-acceso`](installazione/server-sempre-acceso) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html) |

### 📶 Network and devices

| Guide | Code | On the site |
|---|---|---|
| Bringing Omada access points into Home Assistant: clients, traffic and alerts | [📁 `rete/wifi-omada`](rete/wifi-omada) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/wifi-omada-home-assistant.html) |
| Home Assistant and Omada: a setup you can fix from the dashboard | — | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-omada-setup-dashboard.html) |
| A network monitor in Home Assistant: router, access points, Internet and DNS, with outage log and router syslog | [📁 `rete/monitor-rete-syslog`](rete/monitor-rete-syslog) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/monitor-rete-router-syslog-home-assistant.html) |
| A home device inventory in Home Assistant: CSV file, network, warranties and alerts on new or missing devices | [📁 `rete/inventario-dispositivi`](rete/inventario-dispositivi) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/inventario-dispositivi-home-assistant.html) |

### 💬 WhatsApp and notifications

| Guide | Code | On the site |
|---|---|---|
| Home Assistant alerts on WhatsApp, email and app: one script, three channels and a menu to choose | [📁 `whatsapp/tre-canali-avvisi`](whatsapp/tre-canali-avvisi) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/messaggi-whatsapp-email-notifiche-home-assistant.html) |
| WhatsApp notifications from Home Assistant: from one line of text to real messages | [📁 `whatsapp/notifiche-formattate`](whatsapp/notifiche-formattate) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-notifiche-whatsapp-formattate.html) |
| Home WhatsApp number with Home Assistant: authorized senders and a daily limit | [📁 `whatsapp/mittenti-autorizzati`](whatsapp/mittenti-autorizzati) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-whatsapp-mittenti-autorizzati.html) |
| Tailored WhatsApp alerts: Admin and User roles with categories | — | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-whatsapp-ruoli-admin-utente.html) |

### 🛒 Shopping list

| Guide | Code | On the site |
|---|---|---|
| The shopping list in Home Assistant: Google Keep Sync pinned to a commit, with WhatsApp commands | [📁 `lista-spesa/google-keep-sync`](lista-spesa/google-keep-sync) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/lista-spesa-google-keep-home-assistant.html) |
| Shopping list with Home Assistant: WhatsApp, voice notes, Alexa and Google in one note | [📁 `lista-spesa/whatsapp-vocali-alexa`](lista-spesa/whatsapp-vocali-alexa) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-lista-spesa-whatsapp-vocali-alexa.html) |
| A shopping list without duplicates: already there, checked off or new | [📁 `lista-spesa/senza-doppioni`](lista-spesa/senza-doppioni) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-lista-spesa-senza-doppioni.html) |

### 📷 Arlo and Blink cameras

| Guide | Code | On the site |
|---|---|---|
| Arlo cameras in Home Assistant: preview and live card, arming and motion and battery alerts | [📁 `telecamere/arlo-scheda-avvisi`](telecamere/arlo-scheda-avvisi) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/telecamere-arlo-home-assistant.html) |
| Blink cameras in Home Assistant: automatic card, refresh buttons that spare the battery and low battery alert | — | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/telecamere-blink-home-assistant.html) |
| Cameras on WhatsApp with Home Assistant: photos in alerts and snapshots on request | [📁 `telecamere/foto-su-whatsapp`](telecamere/foto-su-whatsapp) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-telecamere-whatsapp-foto.html) |
| Motion at home? The photo comes on WhatsApp, only from the cameras you choose | — | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-movimento-telecamere-whatsapp.html) |
| Blink always armed: automatic re-arm, WhatsApp commands and alerts with Home Assistant | [📁 `telecamere/blink-riarmo-automatico`](telecamere/blink-riarmo-automatico) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-blink-riarmo-automatico-whatsapp.html) |
| Arlo cameras: when the «new» photo is two days old (and how to notice) | [📁 `telecamere/arlo-foto-non-aggiornata`](telecamere/arlo-foto-non-aggiornata) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-arlo-foto-non-aggiornata-base-offline.html) |

### 🤖 Robot vacuum

| Guide | Code | On the site |
|---|---|---|
| The Dreame robot vacuum in Home Assistant: a card with every entity sorted by type, and alerts | [📁 `robot/dreame-scheda`](robot/dreame-scheda) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/robot-aspirapolvere-dreame-home-assistant.html) |
| The Dreame robot vacuum on WhatsApp: alerts with images and commands | [📁 `robot/dreame-whatsapp`](robot/dreame-whatsapp) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-robot-dreame-whatsapp.html) |
| Dreame robot from WhatsApp: why it cleaned only one room, and new commands for the base station | [📁 `robot/dreame-pulizia-stazione-base`](robot/dreame-pulizia-stazione-base) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-dreame-whatsapp-pulizia-stazione-base.html) |

### 💡 Smart Life and Tuya

| Guide | Code | On the site |
|---|---|---|
| Smart Life in Home Assistant: linking the Tuya app without a password, and plugs that read ten times too high | [📁 `smart-life/collegare-tuya`](smart-life/collegare-tuya) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-smart-life-tuya.html) |
| Smart Life on WhatsApp: control lights, plugs, climate and scenes with a message (and decide who can) | [📁 `smart-life/whatsapp-comandi-permessi`](smart-life/whatsapp-comandi-permessi) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-smart-life-whatsapp-comandi-permessi.html) |

### 📺 TV and Alexa

| Guide | Code | On the site |
|---|---|---|
| Android TVs in Home Assistant: the Android TV Remote integration, launching apps and a test card | [📁 `tv-alexa/android-tv-remote`](tv-alexa/android-tv-remote) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/android-tv-remote-home-assistant.html) |
| Google TV in Home Assistant: Android TV Remote, Google Cast and ADB together | [📁 `tv-alexa/google-tv-remote-cast-adb`](tv-alexa/google-tv-remote-cast-adb) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/google-tv-android-tv-remote-cast-adb-home-assistant.html) |
| Controlling the Google TV from WhatsApp with Home Assistant | [📁 `tv-alexa/google-tv-whatsapp`](tv-alexa/google-tv-whatsapp) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/home-assistant-google-tv-whatsapp.html) |
| Alexa devices in Home Assistant: the Alexa Devices integration and a card with a test button | [📁 `tv-alexa/alexa-devices`](tv-alexa/alexa-devices) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/alexa-devices-home-assistant.html) |

### 🏠 Printer and weather

| Guide | Code | On the site |
|---|---|---|
| The printer in Home Assistant: status with IPP, toner, drum and fuser via SNMP, and an alert before they run out | [📁 `casa/stampante-snmp`](casa/stampante-snmp) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/stampante-toner-snmp-home-assistant.html) |
| The Weather card with Met.no: current conditions, hourly and daily forecast, sun and details in three columns | [📁 `casa/meteo-met-no`](casa/meteo-met-no) | [Guide (IT)](https://www.lucianoblancato.it/home-assistant/meteo-met-no-home-assistant.html) |

## About me

I'm [Luciano Blancato](https://www.lucianoblancato.it/chi-sono.html), an IT Manager for over 15 years and in IT for over 30. These guides describe my own home setup, mistakes included.

## Issues

A block no longer works with your Home Assistant version? Open an [issue](../../issues) with the folder and the version. Fixes go into the guide on the site first and the repo is regenerated from it, so both stay identical.

## License

The code is released under the [MIT](LICENSE) license. The guide texts stay on the site.
