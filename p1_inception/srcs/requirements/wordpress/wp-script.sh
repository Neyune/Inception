#!/bin/sh

# tail -f /dev/null
if ! [ -f "/var/www/html/wp-config.php" ]; then
	mv /root/html /var/www/
    wp config create --path='/var/www/html' --dbname='db_name' --dbuser='user_name' --dbpass='user_pass' --dbhost='mysql' --dbprefix='wp_' --allow-root
	wp core install  --path='/var/www/html' --url='http://ereali.42.fr' --title='Blog Title' --admin_user='adminuser' --admin_password='password' --admin_email='ereali@student.42.fr' --allow-root
	touch /var/log/access.log
	touch /var/log/error.log
fi
# tail -f /dev/null

exec php-fpm7.3 -FR
