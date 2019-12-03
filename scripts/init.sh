sudo snap install docker --devmode
sudo apt-get install npm -y 

git clone -b practice https://github.com/EDD-season2/caffeine.git
cd caffeine
git clone -b build https://github.com/kangmin46/dp.git

git clone -b develop https://github.com/edd-season2/caffeine-fe-shop.git
cd caffeine-fe-shop
npm install
npm run build
cd ..

sudo docker-compose up -d --build

