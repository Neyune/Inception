#!/bin/bash
touch /tmp_file
chmod 700 /tmp_file

# creer un fichier temporaire dans lequel on met les instruction mysql 
# les rediriger dans mysql
exec /usr/bin/mysqld --user=mysql --console