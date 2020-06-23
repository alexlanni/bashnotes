#!/usr/bin/env bash

# Quando si definisce una variaile vanno evitati gli spazi prima e dopo =
alessandro=$(whoami)

# expansion: 
# con echo, usando i doublequotes verranno interpretate le variabili e sostituite dal valore
echo "Ciao, $alessandro!"

# .. con i singlequotes, no
echo 'Ciao, $alessandro!'

# con i doppi apici si puo'effettuare l'escape per evitare l'expansion
echo "Ciao, \$alessandro!"
