#!/bin/bash
touch /tmp_file
chmod 755 /tmp_file

service mysql start

cat << EOF > /tmp_file
CREATE DATABASE db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON *.* TO 'user_name'@'localhost' IDENTIFIED BY 'user_pass';
FLUSH PRIVILEGES;
EOF
mysql < /tmp_file
# creer un fichier temporaire dans lequel on met les instruction mysql 
# les rediriger dans mysql
service mysql stop

exec mysqld --user=mysql --bind-address=0.0.0.0