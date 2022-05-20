#!/bin/bash
set -xv
mv wordpress/* /var/www/html/wordpress/
chown -R www-data /var/www/html
mv wp-config.php /var/www/html/wordpress
exec php-fpm7.3 -F
