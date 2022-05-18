#!/bin/bash
set -xv
mv wordpress /var/www/html/

exec php-fpm7.3 -F
