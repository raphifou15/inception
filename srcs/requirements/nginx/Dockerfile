FROM debian:buster

LABEL version="1.0" maintainer="raphael khelif <rkhelif@student.42.fr>"

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 \
			-x509 \
			-sha256 \
			-days 3650 \
			-nodes \
			-out /etc/nginx/ssl/localhost.crt \
			-keyout /etc/nginx/ssl/localhost.key \
			-subj "/C=PR/ST=Paris/L=Paris/O=42/OU=raph/CN=www.localhost.com"
#EXPOSE 443

COPY ./default /etc/nginx/sites-available/default
COPY ./favicon.ico /var/www/html/

CMD ["service", "nginx", "start"]
CMD ["nginx", "-g", "daemon off;"]
