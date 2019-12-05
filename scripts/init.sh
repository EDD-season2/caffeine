#!/bin/bash

sudo snap install docker --devmode
# sudo apt-get install npm -y 

CAFFEINE="caffeine/";
# BACK="caffeine-be/";
# FRONT="caffeine-fe-shop/";

# if [ ! -d "$CAFFEINE" ]; then
#     ls -al
#     git clone -b docker-test https://github.com/EDD-season2/caffeine.git
#     cd "$CAFFEINE"
# else
#     cd "$CAFFEINE"
#     git pull
# fi

# echo 'build backend-container'
# if [ ! -d "$BACK" ]; then
#     ls -al
#     git clone -b docker-image https://github.com/yuyu154/caffeine-be.git
# else
#     git pull
# fi

# echo 'build frontend-shop-container'
# if [ ! -d "$FRONT" ]; then
#     ls -al
#     git clone -b develop https://github.com/edd-season2/caffeine-fe-shop.git
#     cd "$FRONT"
#     npm install
# else
#     cd "$FRONT"
#     git pull
# fi

# npm run build
# cd ..
if [ ! -d "$CAFFEINE" ]; then
    ls -al
    git clone -b docker-test-action https://github.com/EDD-season2/caffeine.git
    cd "$CAFFEINE"
else
    cd "$CAFFEINE"
    git pull
fi
sudo docker-compose up -d --build