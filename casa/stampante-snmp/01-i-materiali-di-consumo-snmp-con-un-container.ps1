# La stampante in Home Assistant: stato con IPP, toner, tamburo e fusore via SNMP e un avviso prima che finiscano
# Sezione / Section: I materiali di consumo: SNMP con un container usa e getta
# Guida completa (in italiano) / Full guide (in Italian):
# https://www.lucianoblancato.it/home-assistant/stampante-toner-snmp-home-assistant.html

# tipo SNMP (Printer MIB, RFC 3805) -> descrizione in italiano
$Tipi = @{ 3 = 'Toner'; 9 = 'Tamburo (unita fotoconduttrice)'; 15 = 'Fusore'; 4 = 'Toner di scarto' }

$raw = (docker run --rm goatatwork/snmpwalk -v 1 -c $Community $Ip 1.3.6.1.2.1.43.11.1.1 2>&1) -join "`n"
if ($raw -notmatch '43\.11\.1\.1\.') { throw "La stampante non ha risposto via SNMP (community '$Community')." }

# per ogni riga: nome, tipo, livello massimo e livello attuale
$pct = $(if ($max -gt 0) { [math]::Round(($liv / $max) * 100, 1) } else { $null })
