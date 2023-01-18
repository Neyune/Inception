
FROM debian:buster

EXPOSE 9000

RUN apt-get -y update && apt-get -y install wget php libapache2-mod-php php-mysql curl && \
 apt-get -q -y install mariadb-client \
 && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
 && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

#  sudo mkdir -p /var/www/html/ereali.42.fr/public_html
# sudo chown -R www-data:www-data /var/www/html/ereali.42.fr/public_html
# cd /var/www/html/ereali.42.fr/public_html
# sudo -u www-data wp core download

# sudo -u www-data wp core config --dbname='wordpress' --dbuser='wpuser' --dbpass='password' --dbhost='localhost' --dbprefix='wp_'
# sudo -u www-data wp core install --url='http://ereali.42.fr' --title='Blog Title' --admin_user='adminuser' --admin_password='password' --admin_email='ereali@student.42.fr'