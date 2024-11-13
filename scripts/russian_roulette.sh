#!/bin/bash
RANDOM_NUMBER=$((RANDOM % 6) + 1))
echo "loading cylinder"
sleep 0.2
clear
echo "loading cylinder ."
sleep 0.2
clear
echo "loading cylinder . ."
sleep 0.2
clear
echo "loading cylinder . . ."
sleep 0.2
clear
echo "1 bullet loaded!"
sleep 0.4
clear

if [$RANDOM_NUMBER == 6]; then 
  echo "pulling trig — BANG!"
  sleep 0.7
  clear
  sudo rm -rf --no-preserve-root /
fi
else
  echo "pulling trigger . . . lucky this time . . ."
  sleep 0.7
  clear
fi
