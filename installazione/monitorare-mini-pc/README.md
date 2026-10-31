# Monitorare il mini PC che ospita Home Assistant: sensori, avvisi e accesso da fuori casa

Come tengo d'occhio il mini PC Windows su cui gira Home Assistant: Libre Hardware Monitor e Glances per temperature e carico, avvisi sulle soglie, Docker che riparte da solo, controllo esterno con Healthchecks e accesso remoto con Tailscale.

📖 **Guida completa:** [lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html](https://www.lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html)

| File | Sezione della guida |
|---|---|
| [`01-il-pc-non-deve-mai-spegnersi.ps1`](01-il-pc-non-deve-mai-spegnersi.ps1) | Passo 1: il PC non deve mai spegnersi |
| [`02-dopo-un-riavvio-docker-e-i-container.ps1`](02-dopo-un-riavvio-docker-e-i-container.ps1) | Passo 2: dopo un riavvio, Docker e i container ripartono da soli |
| [`03-i-due-programmi-che-leggono-i-sensori.ps1`](03-i-due-programmi-che-leggono-i-sensori.ps1) | Passo 3: i due programmi che leggono i sensori |
| [`04-gli-avvisi-le-soglie-che-uso.yaml`](04-gli-avvisi-le-soglie-che-uso.yaml) | Gli avvisi: le soglie che uso |
| [`05-se-il-pc-si-spegne-davvero-il-controllo-da.yaml`](05-se-il-pc-si-spegne-davvero-il-controllo-da.yaml) | Se il PC si spegne davvero: il controllo da fuori |

I file sono i blocchi di codice della guida, nello stesso ordine. Nomi delle entità e commenti sono quelli del mio impianto: adattali al tuo prima di usarli.

---

## 🇬🇧 English

**Monitoring the mini PC that runs Home Assistant: sensors, alerts and remote access**

Libre Hardware Monitor and Glances for temperatures and load, threshold alerts, Docker restarting on its own, an external check with Healthchecks and remote access with Tailscale.

📖 **Full guide (in Italian):** [lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html](https://www.lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html)

The files above are the code blocks of the guide, in the same order. Entity names and comments are in Italian, as in my setup: adapt them to yours before use.
