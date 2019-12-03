sudo snap install docker --devmode
sudo snap install npm -y 

sudo git clone -b practice https://github.com/EDD-season2/caffeine.git
cd caffeine
sudo git clone -b build https://github.com/kangmin46/dp.git

sudo git clone -b develop https://github.com/edd-season2/caffeine-fe-shop.git
cd caffeine-fe-shop
sudo npm build
cd ..

sudo docker-compose up -d --build

