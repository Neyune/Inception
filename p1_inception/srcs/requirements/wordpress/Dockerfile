
# By default, containers run as root.

FROM debian:buster

#The EXPOSE instruction does not actually publish the port. It functions as a type of documentation between the person who builds the image and the person who runs the container, about which ports are intended to be published.
EXPOSE 9000

RUN apt -y update && apt install php-fpm php-mysql -y && \
 apt-get -y update && apt-get install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y curl && \
 apt-get -q -y install mariadb-client \
 && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN userdel www-data && useradd -u 82 www-data && \
    mkdir -p /var/www/html && \
    chown -R www-data:www-data /var/www/html && \
    # chown -R www-data:www-data /var/log/php && \
    chmod -R 755 /var/www/html 
    # chmod -R 755 /var/log/php

RUN wp core download --allow-root

COPY ./ereali.conf /etc/php/7.3/fpm/pool.d/ereali.conf
USER www-data:www-data

WORKDIR /var/www/html

CMD ["sh","wp-script.sh"] 
