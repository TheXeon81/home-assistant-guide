# Come installare Home Assistant con Docker su Windows

Guida passo per passo: Docker Desktop da PowerShell, il docker-compose.yml di Home Assistant e le verifiche per essere sicuro che sia tutto a posto.

📖 **Guida completa:** [lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html](https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html)

| File | Sezione della guida |
|---|---|
| [`01-attiva-wsl2.ps1`](01-attiva-wsl2.ps1) | Passo 1 — Attiva WSL2 |
| [`02-installa-docker-desktop-da-powershell.ps1`](02-installa-docker-desktop-da-powershell.ps1) | Passo 2 — Installa Docker Desktop da PowerShell |
| [`03-verifica-che-docker-sia-pronto.ps1`](03-verifica-che-docker-sia-pronto.ps1) | Passo 3 — Verifica che Docker sia pronto |
| [`04-crea-la-cartella-di-configurazione.ps1`](04-crea-la-cartella-di-configurazione.ps1) | Passo 4 — Crea la cartella di configurazione |
| [`05-scrivi-il-docker-compose-yml.ps1`](05-scrivi-il-docker-compose-yml.ps1) | Passo 5 — Scrivi il docker-compose.yml |
| [`06-avvia-il-container.ps1`](06-avvia-il-container.ps1) | Passo 6 — Avvia il container |
| [`07-verifica-che-sia-tutto-ok.ps1`](07-verifica-che-sia-tutto-ok.ps1) | Passo 7 — Verifica che sia tutto ok |
| [`08-apri-l-accesso-dalla-rete-locale-opzionale.ps1`](08-apri-l-accesso-dalla-rete-locale-opzionale.ps1) | Apri l'accesso dalla rete locale (opzionale) |

I file sono i blocchi di codice della guida, nello stesso ordine. Nomi delle entità e commenti sono quelli del mio impianto: adattali al tuo prima di usarli.

---

## 🇬🇧 English

**How to install Home Assistant with Docker on Windows**

Step by step: Docker Desktop from PowerShell, the Home Assistant docker-compose.yml and the checks that everything is running.

📖 **Full guide (in Italian):** [lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html](https://www.lucianoblancato.it/home-assistant/installare-home-assistant-docker-windows.html)

The files above are the code blocks of the guide, in the same order. Entity names and comments are in Italian, as in my setup: adapt them to yours before use.
