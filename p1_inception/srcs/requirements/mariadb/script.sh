#!/bin/bash
touch /tmp_file
chmod 700 /tmp_file

systemctl service mysql start

cat << EOF > /tmp_file
CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
EOF
mariadb -u root < /tmp_file
# creer un fichier temporaire dans lequel on met les instruction mysql 
# les rediriger dans mysql

exec /usr/bin/mysqld --user=mysql 