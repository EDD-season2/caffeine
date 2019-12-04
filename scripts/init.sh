#!/bin/bash

sudo snap install docker --devmode
sudo apt-get install npm -y 

if [! -d caffeine]; then
    git clone -b practice https://github.com/EDD-season2/caffeine.git
    cd caffeine
else
    cd caffeine
    git pull
fi

if [! -d dp]; then
    git clone -b build https://github.com/kangmin46/dp.git
else
    cd dp
    git pull
fi

if [! -d caffeine-fe-shop]; then
    git clone -b develop https://github.com/edd-season2/caffeine-fe-shop.git
    cd caffeine-fe-shop
    npm install
else
    cd caffeine-fe-shop
    git pull
fi

npm run build
cd ..
sudo docker-compose up -d --build