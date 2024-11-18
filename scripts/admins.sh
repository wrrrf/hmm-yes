#!/bin/bash
SUDO_DEFAULTS=()
ADM_DEFAULTS=("syslog")
ROOT_DEFAULTS=()
SHADOW_DEFAULTS=()
DISK_DEFAULTS=()

grep "^adm" /etc/group | awk -F ':' '{print $4}' | sed 's/,/\n/g' | while read -r user; do
    if ! grep -q "$user" ../input/admins && [[ ! " ${ADM_DEFAULTS[@]} " =~ " ${user} " ]]; then
        sed -i "/^adm/s/$user//" /etc/group
        echo "removed user $user from group adm"
    fi
done

grep "^sudo" /etc/group | awk -F ':' '{print $4}' | sed 's/,/\n/g' | while read -r user; do
    if ! grep -q "$user" ../input/admins && [[ ! " ${ADM_DEFAULTS[@]} " =~ " ${user} " ]]; then
        sed -i "/^sudo/s/$user//" /etc/group
        echo "removed user $user from group sudo"
    fi
done

grep "^shadow" /etc/group | awk -F ':' '{print $4}' | sed 's/,/\n/g' | while read -r user; do
    if [[ ! " ${SHADOW_DEFAULTS[@]} " =~ " ${user} " ]]; then
        sed -i "/^shadow/s/$user//" /etc/group
        echo "removed user $user from group shadow"
    fi
done