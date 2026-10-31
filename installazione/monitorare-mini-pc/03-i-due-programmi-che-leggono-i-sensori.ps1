# Monitorare il mini PC che ospita Home Assistant: sensori, avvisi e accesso da fuori casa
# Sezione / Section: Passo 3: i due programmi che leggono i sensori
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html

# Libre Hardware Monitor + driver per i sensori della scheda madre
winget install --id LibreHardwareMonitor.LibreHardwareMonitor -e --silent --accept-package-agreements --accept-source-agreements
winget install PawnIO --silent --accept-package-agreements --accept-source-agreements

# Glances in un ambiente virtuale, con interfaccia web
& "$env:ProgramFiles\Python312\python.exe" -m venv C:\srv-home\glances-venv
& C:\srv-home\glances-venv\Scripts\python.exe -m pip install --upgrade pip "glances[web]"
# attività pianificata all'avvio:  glances.exe -w -B 0.0.0.0 -t 5
