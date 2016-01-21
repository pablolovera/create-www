#!/bin/sh


# MYSQL

echo "Instalando o Mysql"

apt-get install mysql-server




# APACHE

echo "Instalando o Apache a apachetop"

apt-get install apache2

apt-get install apachetop



# PHP

echo "Instalando o PHP 7"

echo "Fazendo backup do source.list"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup-autoinstall

echo "Adicionando o dotdeb PHP7 repositórios"
deb http://packages.dotdeb.org jessie all
deb-src http://packages.dotdeb.org jessie all

echo "Configurando da chave gpg…"
wget https://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg

echo "Atualizando os repositórios"
apt-get update

echo "Instalando o php e bibliotecas"
apt-get install php7.0

apt-get install libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-json




# GIT

echo "Instalando o GIT"

apt-get install git



# CURL

echo "Instalando o CURL"

apt-get install curl



# Composer

echo "Instalando o Composer"

curl -sS https://getcomposer.org/installer | php

php -r "readfile('https://getcomposer.org/installer');" | php

curl -sS https://getcomposer.org/installer | php -- --install-dir=bin

curl -sS https://getcomposer.org/installer | php -- --filename=composer

curl -sS https://getcomposer.org/installer | php -- --version=1.0.0-alpha11


# RESTART

echo "OK, Vamos reiniciar e torcer para funcionar!!!!"
reboot
exit
