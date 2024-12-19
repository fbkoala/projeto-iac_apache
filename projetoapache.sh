#! /bin/bash

echo " iniciando ..."

apt update -y
apt upgrade -y
apt install apache2 -y
systemctl start apache2
systemctl enable apache2

apt install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html/


echo "finalizado"
