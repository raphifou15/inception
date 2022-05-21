#!/bin/bash
set -xv
#mv wordpress/* /var/www/html/wordpress/
chown -R www-data /var/www/html
#mv wp-config.php /var/www/html/
cd /var/www/html/
sleep 10
wp config create --dbname=wordpress --dbuser=rkhelif --dbpass=rkhelif --dbhost=mariadb  --allow-root
wp core install --url=rkhelif.42.fr --title=rkhelif --admin_user=rkhelif --admin_password=rkhelif --admin_email=lala@lala.fr --allow-root
wp user create lala lala2@lala.fr --role=editor --user_pass=lala --allow-root
exec php-fpm7.3 -F
