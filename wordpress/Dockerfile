
FROM debian:buster

EXPOSE 9000

RUN apt-get -y update && apt-get -y install wget php libapache2-mod-php php-mysql

WORKDIR /var/www/html

RUN wget http://wordpress.org/latest.tar.gz
RUN	tar xfz latest.tar.gz
RUN	mv wordpress/* ./
RUN	rm -f latest.tar.gz
