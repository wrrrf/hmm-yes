#!/bin/bash
touch ~/hmm.txt
CNT=0
#SEEN=()
while read -r line; do
  #ip=echo "$line" | cut -d ' ' -f 1
  VARIABLE="${line%% *}"
  if ! grep -q $VARIABLE ~/hmm.txt; then
    CNT=$(($CNT + 1)) 
    echo $VARIABLE
  fi 
  echo "$VARIABLE" >> ~/hmm.txt
  #echo "$VARIABLE"
done < ~/Desktop/ipfun.log
echo "$CNT"
rm ~/hmm.txt
