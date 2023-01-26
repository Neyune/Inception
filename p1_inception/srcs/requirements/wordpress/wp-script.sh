#!/bin/sh

if ! [ -f "/var/www/wordpress/wp-config.php" ]; then
    wp config create --dbname='db_name' --dbuser='user_name' --dbpass='user_pass' --dbhost='mysql' --dbprefix='wp_' --allow-root 
wp core install  --path='/var/www/html' --url='http://ereali.42.fr' --title='Blog Title' --admin_user='adminuser' --admin_password='password' --admin_email='ereali@student.42.fr' --allow-root
touch /var/log/access.log
touch /var/log/error.log
fi
exec php-fpm7.3