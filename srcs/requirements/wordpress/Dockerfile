FROM debian:buster

LABEL version="1.0" maintainer="raphael khelif <rkhelif@student.42.fr>"

RUN apt-get update
RUN apt-get upgrade


RUN apt-get install php7.3 -y
RUN apt-get install php7.3-cli -y
RUN apt-get install php7.3-fpm -y
RUN apt-get install php7.3-json -y
RUN apt-get install php7.3-pdo -y
RUN apt-get install php7.3-mysql -y
RUN apt-get install php7.3-zip -y
RUN apt-get install php7.3-gd -y
RUN apt-get install php7.3-mbstring -y
RUN apt-get install php7.3-curl -y
RUN apt-get install php7.3-xml -y
RUN apt-get install php7.3-bcmath -y
RUN apt-get install php7.3-json -y

RUN apt-get install php-fpm -y
RUN apt-get install php-cli -y
RUN apt-get install php-mysql -y
RUN apt-get install php-json -y
RUN apt-get install php-mbstring -y
RUN apt-get install php-xml -y

### ajout autre methode
RUN apt-get install mariadb-client -y
#####
RUN mkdir /run/php
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
#COPY ./wp-config.php /

RUN apt-get install wget -y
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
WORKDIR /var/www/html
RUN wp core download --allow-root
WORKDIR /
#RUN wget https://wordpress.org/latest.tar.gz
#RUN tar -xvzf /latest.tar.gz
COPY ./lala2.sh ./
#RUN mv wordpress /var/www/html/

#ENTRYPOINT tail -f /dev/null
#COPY ./index.php /var/www/html/index.php
ENTRYPOINT ["sh", "./lala2.sh"]
