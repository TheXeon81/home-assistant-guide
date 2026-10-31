# Monitorare il mini PC che ospita Home Assistant: sensori, avvisi e accesso da fuori casa
# Sezione / Section: Passo 1: il PC non deve mai spegnersi
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/monitorare-mini-pc-home-assistant.html

powercfg /setactive SCHEME_MIN          # Prestazioni elevate
foreach ($t in 'standby-timeout', 'hibernate-timeout', 'disk-timeout', 'monitor-timeout') {
    powercfg /change "$t-ac" 0
    powercfg /change "$t-dc" 0
}
powercfg /hibernate off                 # niente ibernazione, niente Avvio rapido

# Schede di rete: Windows non deve spegnerle per risparmiare energia
Get-NetAdapter -Physical | ForEach-Object {
    try { Disable-NetAdapterPowerManagement -Name $_.Name -NoRestart -ErrorAction Stop } catch { }
}

# Se va in blue screen, riavvia da solo
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name AutoReboot -Value 1 -Type DWord

# Windows Update: niente riavvii automatici con un utente collegato
$au = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
New-Item $au -Force | Out-Null
Set-ItemProperty $au -Name NoAutoRebootWithLoggedOnUsers -Value 1 -Type DWord

# Rete "Privata": il firewall di Windows è più severo con le reti "Pubbliche"
Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private
