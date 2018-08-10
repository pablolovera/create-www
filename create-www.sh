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

#echo "Fazendo backup do source.list"
#sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup-autoinstall

#echo "Adicionando o dotdeb PHP7 repositórios"
#deb http://packages.dotdeb.org jessie all
#deb-src http://packages.dotdeb.org jessie all

#echo "Configurando da chave gpg…"
#wget https://www.dotdeb.org/dotdeb.gpg
#apt-key add dotdeb.gpg

#echo "Atualizando os repositórios"
#apt-get update

echo "Instalando o php e bibliotecas"

apt-get install php7.0 libapache2-mod-php7.0 php7.0-curl php7.0-dom php7.0-exif php7.0-fileinfo php7.0-gd php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-mysqli php7.0-pgsql php7.0-sqlite3 php7.0-zip php7.0-intl




# GIT

echo "Instalando o GIT"

apt-get install git



# CURL

echo "Instalando o CURL"

apt-get install curl



# Composer

echo "Instalando o Composer"

apt-get install compose


# RESTART

echo "OK, Vamos reiniciar e torcer para funcionar!!!!"
reboot
exit
