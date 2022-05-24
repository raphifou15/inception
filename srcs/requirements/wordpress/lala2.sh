#!/bin/bash
set -xv
#mv wordpress/* /var/www/html/wordpress/
chown -R www-data /var/www/html
#mv wp-config.php /var/www/html/
cd /var/www/html/
sleep 5
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb  --allow-root
wp core install --url=rkhelif.42.fr --title=$WP_TITLE --admin_user=$WP_AD_USER --admin_password=$WP_AD_PASS --admin_email=$WP_AD_EMAIL --allow-root
wp user create $WP_U_USER $WP_U_EMAIL --role=editor --user_pass=$WP_U_PASS --allow-root
exec php-fpm7.3 -F
