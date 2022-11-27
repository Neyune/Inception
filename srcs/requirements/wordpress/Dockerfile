
FROM debian:buster

EXPOSE 9000

RUN apt-get -y update && apt-get -y install wget php libapache2-mod-php php-mysql curl && \
 apt-get -q -y install mariadb-client \
 && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
