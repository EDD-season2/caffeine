sudo snap install docker --devmode
sudo git clone -b build https://github.com/kangmin46/dp.git
cd dp
sudo docker-compose up -d --build