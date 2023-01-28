#!/bin/bash
touch /tmp/tmp_file
chmod 755 /tmp/tmp_file

service mysql start

cat << EOF > /tmp/tmp_file
CREATE DATABASE IF NOT EXISTS db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON db_name.* TO 'user_name'@'%' IDENTIFIED BY 'user_pass';
FLUSH PRIVILEGES;
EOF
mysql < /tmp/tmp_file
# creer un fichier temporaire dans lequel on met les instruction mysql 
# les rediriger dans mysql
# cat << EOF > /tmp_file
# CREATE DATABASE IF NOT EXISTS db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
# GRANT ALL ON *.* TO 'user_name'@'localhost' IDENTIFIED BY 'user_pass';
# FLUSH PRIVILEGES;
# EOF
# mysql < /tmp/tmp_file
# # # creer un fichier temporaire dans lequel on met les instruction mysql 
# # # les rediriger dans mysql
service mysql stop
rm -rf /tmp/tmp_file

exec mysqld --user=mysql --bind-address=0.0.0.0
# ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';


# cat << EOF > /tmp/tmp_file
# CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
# GRANT ALL ON *.* TO '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';
# FLUSH PRIVILEGES;
# EOF



# environment:
  # WORDPRESS_DB_HOST=${WORDPRESS_DB_HOST}
  # MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
  # WORDPRESS_DB_NAME=${WORDPRESS_DB_NAME}
  # WORDPRESS_DB_USER=${WORDPRESS_DB_USER}
  # WORDPRESS_DB_PASSWORD=${WORDPRESS_DB_PASSWORD}
  # WORDPRESS_TABLE_PREFIX=${WORDPRESS_TABLE_PREFIX}
# environment:
#   MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
#   MYSQL_DATABASE=${MYSQL_DATABASE}
#   MYSQL_USER=${MYSQL_USER}
#   MYSQL_PASSWORD=${MYSQL_PASSWORD}