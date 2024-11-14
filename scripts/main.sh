#!/bin/bash

source ./type_a_word.sh
source ./russian_roulette.sh

type_a_word "Hello World"

YESS=("y", "Y", "YES", "yes", "Yes")
NOS=("n", "N", "NO", "no", "No", "NEINNEINNEIN")
YESNOS=("${YESS[@]}" "${NOS[@]}")

sudo ufw enable

while read user; do
  echo $user
done < /etc/passwd

while read package; do
  sudo apt purge --autoremove $package
done < ../configs/no_packages

for service in $(sudo systemctl list-units --type=service); do
  echo "$service"
  if ! grep $service ../configs/default_services && ! grep $service ../input/yes_services; then
    sudo systemctl disable --now $service
  fi
done

ILLEGAL_FILES_MP3=$((sudo find / -iname *.mp3 2>/dev/null))
ILLEGAL_FILES_WAV=$((sudo find / -iname *.wav 2>/dev/null))
ILLEGAL_FILES_OGG=$((sudo find / -iname *.ogg 2>/dev/null))

if [ $ILLEGAL_FILES_MP3$ILLEGAL_FILES_WAV$ILLEGAL_FILES_OGG != ""]; then
  echo "i found $ILLEGAL_FILES_MP3$ILLEGAL_FILES_WAV$ILLEGAL_FILES_OGG, these are probably bad, you should remove them"
  echo "yeah i know ur a lazy ass cunt"
  sleep 0.5
  echo "should i do it for you? y/n"
  read RESPONSE
  while [[ ! " $YESNOS " =~ " $RESPONSE " ]]; then
    type_a_string "are you fucking stupid?"
    type_a_string "I asked you a goddamn yes or no question, answer accordingly you fucking monkey"
    read RESPONSE
  done
  if [[ " $YESS " =~ " $RESPONSE " ]]; then
    for file in $
  fi
fi




