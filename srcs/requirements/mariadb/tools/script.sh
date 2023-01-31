#!/bin/bash

# # creer un fichier temporaire dans lequel on met les instruction mysql
# # les rediriger dans mysql

touch tmp_file
chmod 755 tmp_file

cat << EOF > tmp_file
CREATE DATABASE IF NOT EXISTS ${DB_NAME} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE ${DB_NAME};
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PWD}';
FLUSH PRIVILEGES;
GRANT ALL ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PWD}';
FLUSH PRIVILEGES;
EOF

mysqld --user=mysql --bootstrap --verbose=0 --skip-name-resolve --skip-networking=0 < tmp_file
exec mysqld --user=mysql --console --skip-name-resolve --skip-networking=0 $@