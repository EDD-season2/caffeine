#!/bin/bash

sudo snap install docker --devmode
CAFFEINE="caffeine/";

if [ ! -d "$CAFFEINE" ]; then
    ls -al
    git clone -b develop https://github.com/EDD-season2/caffeine.git
    cd "$CAFFEINE"
else
    cd "$CAFFEINE"
    git pull
fi
sudo docker-compose up -d --build
