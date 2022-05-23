#!/bin/bash
export DB_ROOT_PASS=raph

export DB_NAME=wordpress
export DB_USER=rkhelif
export DB_PASS=rkhelif

set -xv
RAPH=/lala.sql
if [ -f "$RAPH" ]
then
#creation de la base de donner
service mysql start
#mysql -V
envsubst < /lala.sql > /lala2.sql
mysql < /lala2.sql
rm -rf /lala.sql
rm -rf /lala2.sql
service mysql stop
fi
exec mysqld_safe

#echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -u root -p$DB_ROOT_PASS
#creation d'un nouvel utilisateur qui peut utiliser la base de donner
#echo "CREATE USER IF NOT EXISTS '$DB_USER' IDENTIFIED BY '$DB_PASS';" | mysql -u root -p$DB_ROOT_PASS
#echo "GRANT ALL ON $DB_NAME.* TO '$DB_USER' IDENTIFIED BY '$DB_PASS';" | mysql -u root -p$DB_ROOT_PASS
#echo "GRANT ALL PRIVILEGES on *.* to 'root'@'localhost' identified by '$DB_ROOT_PASS';" | mysql -u root -p$DB_ROOT_PASS
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';" | mysql -u root -p$DB_ROOT_PASS
#echo "FLUSH PRIVILEGES;" | mysql -u root -p$DB_ROOT_PASS
