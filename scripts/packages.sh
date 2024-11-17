#!/bin/bash
while read package; do
  sudo apt purge --autoremove $package
done < ../configs/no_packages