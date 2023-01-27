#!/bin/bash

# tail -f /dev/null
# MYSQL_DATABASE=inception
# MYSQL_ROOT_PASSWORD=wordpress
# MYSQL_ROOT_USER=root
# MYSQL_USER=emaugale
# MYSQL_PASSWORD=1234

touch /tmp/tmp_file
chmod 755 /tmp/tmp_file

service mysql start

cat << EOF > /tmp_file
CREATE DATABASE IF NOT EXISTS db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON *.* TO 'user_name'@'localhost' IDENTIFIED BY 'user_pass';
FLUSH PRIVILEGES;
EOF
mysql < /tmp/tmp_file
# # creer un fichier temporaire dans lequel on met les instruction mysql 
# # les rediriger dans mysql
service mysql stop
rm -rf /tmp/tmp_file

exec mysqld --user=mysql --bind-address=0.0.0.0