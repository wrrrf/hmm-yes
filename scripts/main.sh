#!/bin/bash

sudo chmod -R +x ..

sudo ufw enable

source ./type_a_word.sh
source ./russian_roulette.sh

if [ ! $1 == "--safe" ]; then
    ./russian_roulette.sh
fi

./packages.sh
./services.sh

./users.sh
./admins.sh

./configs.sh



