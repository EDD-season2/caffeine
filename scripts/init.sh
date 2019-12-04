#!/bin/bash

sudo snap install docker --devmode
sudo apt-get install npm -y 
sudo apt-get install openjdk-8-jdk

CAFFEINE="caffeine/";
BACK="dp/";
FRONT="caffeine-fe-shop/";

if [ ! -d "$CAFFEINE" ]; then
    ls -al
    git clone -b practice https://github.com/EDD-season2/caffeine.git
    cd "$CAFFEINE"
else
    cd "$CAFFEINE"
    git pull
fi

echo 'build backend-container'
if [ ! -d "$BACK" ]; then
    ls -al
    git clone -b build https://github.com/yuyu154/dp.git
    cd "$BACK"
    ./gradlew build
    cd ..
else
    cd "$BACK"
    git pull
    ./gradlew build
    cd ..
fi

echo 'build frontend-shop-container'
if [ ! -d "$FRONT" ]; then
    ls -al
    git clone -b develop https://github.com/edd-season2/caffeine-fe-shop.git
    cd "$FRONT"
    npm install
else
    cd "$FRONT"
    git pull
fi

npm run build
cd ..
sudo docker-compose up -d --build