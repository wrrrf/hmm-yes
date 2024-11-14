#!/bin/bash
echo "starting"
sudo systemctl list-units --type=service | sed "1d" | while read -r service; do
  service_name=$(echo "$service" | awk '{print $1}' 2>/dev/null) #remove the status and stuff after the service name

  if ! grep -q $service_name ../configs/default_services && ! grep -q $service_name ../input/yes_services; then # make sure that its not a default service or one that is allowed
    package_name=$(echo "$service_name" | cut -d '.' -f 1)
    sudo systemctl disable --now $service_name && echo "removed $service_name" && sudo apt purge --autoremove -y $package_name
  else
    echo "$service_name not removed"
  fi

done