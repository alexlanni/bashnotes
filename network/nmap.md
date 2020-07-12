# Utilizzo di nmap per eseguire il discovery della rete


## Modi di uso comuni


````nmap -sP 192.168.1.0/24````

Mostra tutti i client sulla LAN specificata

````map -v 192.168.1.1````

Questa opzione esegue uno scan su tutte le porte TCP riservate sulla macchina 192.168.1.1. L'opzione -v attiva la modalità verbose.


````nmap -sS -O 192.168.1.0/24````

Lancia un SYN scan invisibile verso ciascuna macchina che risulta accesa tra le 256 nell'intera rete di classe C in cui risiede Scanme. Inoltre tenta di determinare il sistema operativo installato su ogni host trovato. Questo richiede i privilegi di root a causa della funzioni SYN scan e OS detection.

````nmap -sV -p 22,53,110,143,4564 198.168.1-255.1-127````

Lancia una enumerazione di hosts e uno scan TCP alla prima metà di ognuna delle 255 sottoreti di 8 bit all'interno dello spazio di indirizzamento della classe B 198.116. Quest'operazione controlla se tali sistemi stanno eseguendo i servizi SSH, DNS, POP3 o IMAP sulle loro porte standard, o altro sulla porta 4564. Qualora qualche porta di queste venga trovata aperta, verrà utilizzato il version detection per determinare quale applicazione stia effettivamente ascoltando su quella porta.

````nmap -v -iR 100000 -Pn -p 80````

Chiede a Nmap di scegliere 100.000 hosts casuali ed effettuare su questi uno scan per ricercare dei web servers (porta 80). L'enumerazione degli host è disabilitata con l'opzione -Pn dal momento che verificare se un host è attivo è uno spreco quando si sta analizzando soltanto una porta per ogni hosts.

````nmap -Pn -p80 -oX logs/pb-port80scan.xml -oG logs/pb-port80scan.gnmap 216.163.128.20/20````

Questo scansiona 4096 indirizzi IP in cerca di webservers (ma senza effettuare ping) e salva l'output sia in formato XML che in formato "greppabile".


