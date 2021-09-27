#! /bin/bash

#update api package and upgrage
echo "update and upgrade"
sudo apt-get update -y $$ sudo apt-get upgrade -y
echo
echo "install apache"
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y
echo 
echo "install my sql"
echo
echo "install PHP & Requirements"
sudo apt-get install libapache2-mod-php7.0 php7.0 php7.0-common php7.0-curl php7.0-dev php7.0-gd php-pear php7.0-mcrypt php7.0-mysql -y
echo 
echo "setting permission"
sudo chown -R www-data:www-data /var/www
echo
echo "enabling module"
sudo a2enmod rewrite
sudo phpenmod mcrypt
echo
echo "restarting apache"
sudo service apache2 restart
