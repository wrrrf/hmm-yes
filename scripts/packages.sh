#!/bin/bash
while read package; do
  sudo apt purge --autoremove -y $package
done < ../configs/no_packages