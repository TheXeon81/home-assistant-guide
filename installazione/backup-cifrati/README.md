# Backup notturni cifrati di Home Assistant, OpenWA e Omada su Docker, con verifica, rotazione e stato in dashboard

Come salvo ogni notte Home Assistant, OpenWA e Omada in un archivio 7-Zip cifrato con AES-256, lo verifico, tengo gli ultimi sette e ne mostro l'esito nella scheda Backup, con un avviso se manca da più di 30 ore.

📖 **Guida completa:** [lucianoblancato.it/home-assistant/backup-cifrati-home-assistant-docker.html](https://www.lucianoblancato.it/home-assistant/backup-cifrati-home-assistant-docker.html)

| File | Sezione della guida |
|---|---|
| [`01-cifratura-verifica-e-rotazione.ps1`](01-cifratura-verifica-e-rotazione.ps1) | Cifratura, verifica e rotazione |

I file sono i blocchi di codice della guida, nello stesso ordine. Nomi delle entità e commenti sono quelli del mio impianto: adattali al tuo prima di usarli.

---

## 🇬🇧 English

**Encrypted nightly backups of Home Assistant, OpenWA and Omada on Docker**

A nightly AES-256 7-Zip archive, verified and rotated (last seven kept), with its status on the dashboard and an alert when it is older than 30 hours.

📖 **Full guide (in Italian):** [lucianoblancato.it/home-assistant/backup-cifrati-home-assistant-docker.html](https://www.lucianoblancato.it/home-assistant/backup-cifrati-home-assistant-docker.html)

The files above are the code blocks of the guide, in the same order. Entity names and comments are in Italian, as in my setup: adapt them to yours before use.
