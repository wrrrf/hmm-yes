#!/bin/bash
while read -r user; do
    username=$(echo "$user" | awk -F':' '{print $1}')
    if ! grep -q "^$username" ../configs/default_users && \
    ! grep -q "^$username" ../input/users; then

        sed -i "/^$username/ s/^/#/" /etc/passwd

    fi
done < /etc/passwd