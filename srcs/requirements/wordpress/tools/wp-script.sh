#!/bin/sh

if ! [ -f "/var/www/html/wp-config.php" ]; then
	mv /root/html/* /var/www/html/
	wp config create --path='/var/www/html' --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PWD} --dbhost='mysql' --dbprefix='wp_' --allow-root
	touch /var/log/access.log
	touch /var/log/error.log
fi
wp core install  --path='/var/www/html' --url='http://ereali.42.fr' --title='Inception' --admin_user=${WP_ADMIN} --admin_password=${WP_PWD} --admin_email='ereali@student.42.fr' --allow-root
wp user create bloom bloom@winx.com --role=author --user_pass=${WP_USER_PWD} --allow-root

exec php-fpm7.3 -FR