# Il server di casa non deve restare spento: riaccensione automatica, Wake-on-LAN e allarme esterno

Cosa succede quando il mini PC con Home Assistant si spegne, e i tre livelli di difesa per farlo ripartire (BIOS «accendi sempre», Wake-on-LAN, presa smart) più un allarme esterno con Healthchecks.io per saperlo subito, anche quando la casa è spenta.

📖 **Guida completa:** [lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html](https://www.lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html)

| File | Sezione della guida |
|---|---|
| [`01-wake-on-lan-svegliarlo-dalla-rete.ps1`](01-wake-on-lan-svegliarlo-dalla-rete.ps1) | Livello 2 · Wake-on-LAN: svegliarlo dalla rete |
| [`02-wake-on-lan-svegliarlo-dalla-rete.ps1`](02-wake-on-lan-svegliarlo-dalla-rete.ps1) | Livello 2 · Wake-on-LAN: svegliarlo dalla rete |
| [`03-la-presa-smart-la-soluzione-piu-robusta.yaml`](03-la-presa-smart-la-soluzione-piu-robusta.yaml) | Livello 3 · la presa smart, la soluzione più robusta |
| [`04-accorgersene-subito-healthchecks-io.ps1`](04-accorgersene-subito-healthchecks-io.ps1) | Accorgersene subito: Healthchecks.io |
| [`05-accorgersene-subito-healthchecks-io.yaml`](05-accorgersene-subito-healthchecks-io.yaml) | Accorgersene subito: Healthchecks.io |

I file sono i blocchi di codice della guida, nello stesso ordine. Nomi delle entità e commenti sono quelli del mio impianto: adattali al tuo prima di usarli.

---

## 🇬🇧 English

**The home server must not stay off: auto power-on, Wake-on-LAN and an external alarm**

Three layers to bring the Home Assistant mini PC back (BIOS power-on, Wake-on-LAN, smart plug) plus an external alarm with Healthchecks.io.

📖 **Full guide (in Italian):** [lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html](https://www.lucianoblancato.it/home-assistant/home-assistant-server-sempre-acceso-wake-on-lan-healthchecks.html)

The files above are the code blocks of the guide, in the same order. Entity names and comments are in Italian, as in my setup: adapt them to yours before use.
