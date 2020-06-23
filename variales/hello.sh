#!/usr/bin/env bash

# Quando si definisce una variaile vanno evitati gli spazi prima e dopo =
alessandro=$(whoami)

# usare prinf consente di tipizzare in ooutput le variabili
printf "Ciao, %s!\n" "$alessandro"

