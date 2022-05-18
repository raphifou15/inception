#!/bin/bash
set -xv
#creation de la base de donner
service mysql start
echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root --skip-password
#creation d'un nouvel utilisateur qui peut utiliser la base de donner
echo "CREATE USER IF NOT EXISTS 'rkhelif' IDENTIFIED BY 'rkhelif';" | mysql -u root --skip-password
echo "GRANT ALL ON wordpress.* TO 'rkhelif' IDENTIFIED BY 'rkhelif';" | mysql -u root --skip-password 

service mysql stop
exec mysqld_safe
