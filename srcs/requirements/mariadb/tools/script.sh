#!/bin/bash
touch /tmp/tmp_file
chmod 755 /tmp/tmp_file

service mysql start
cat << EOF > /tmp/tmp_file
CREATE DATABASE IF NOT EXISTS ${DB_NAME} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PWD}';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PWD}';
FLUSH PRIVILEGES;
EOF
# creer un fichier temporaire dans lequel on met les instruction mysql
# les rediriger dans mysql

mysql < /tmp/tmp_file

service mysql stop

rm -rf /tmp/tmp_file

exec mysqld --user=mysql --bind-address=0.0.0.0