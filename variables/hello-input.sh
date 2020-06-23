#!/usr/bin/env bash

echo  Come ti chiami?
read alessandro

# dopo aver letto línput dall'utente, stampo il valore


# usare prinf consente di tipizzare in ooutput le variabili
printf "Ciao, %s!\n" "$alessandro"

