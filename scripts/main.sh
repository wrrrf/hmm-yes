#!/bin/bash

sudo ufw enable

source ./type_a_word.sh
source ./russian_roulette.sh

YESS=("y", "Y", "YES", "yes", "Yes")
NOS=("n", "N", "NO", "no", "No", "NEINNEINNEIN")
YESNOS=("${YESS[@]}" "${NOS[@]}")

./packages.sh

./services.sh




