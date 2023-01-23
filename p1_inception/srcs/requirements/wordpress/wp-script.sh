#!/bin/sh

wp core config --dbname='wordpress' --dbuser='ereali' --dbpass='password' --dbhost='localhost' --dbprefix='wp_'
wp core install --url='http://ereali.42.fr' --title='Blog Title' --admin_user='adminuser' --admin_password='password' --admin_email='ereali@student.42.fr'
touch /var/log/php/7.3/access.log 
touch /var/log/php/7.3/error.log
exec php7.3-fpm