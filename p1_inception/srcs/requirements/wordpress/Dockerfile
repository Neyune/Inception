
# By default, containers run as root.

FROM debian:buster

#The EXPOSE instruction does not actually publish the port. It functions as a type of documentation between the person who builds the image and the person who runs the container, about which ports are intended to be published.
EXPOSE 9000
WORKDIR /var/www/html/

RUN apt -y update && apt install php-fpm php-mysql -y && \
 apt-get -y update && apt-get install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y curl && \
 apt-get -q -y install mariadb-client \
 && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN userdel www-data && useradd -u 82 www-data && \
    mkdir -p /var/www/html /var/run/php && \
    chown -R www-data:www-data /var/www/html /var/run/php && \
    # chown -R www-data:www-data /var/log/ && \
    chmod -R 755 /var/www/html && \
    chmod -R 777 /var/run/php && \
    chmod -R 777 /var/log/


#RUN wp core download --force --path='/var/www/html' --allow-root

RUN mkdir /root/html && wp core download --force --path='/root/html' --allow-root

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf

# COPY wp-config.php /var/www/html/

# RUN chown -R www-data:www-data /var/www/html/wp-config.php

# USER www-data:www-data


COPY ./wp-script.sh /usr/bin/wp-script.sh
CMD ["wp-script.sh"]
