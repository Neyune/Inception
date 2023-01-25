
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install mariadb-server mariadb-client

RUN userdel www-data && useradd -u 999 mysqld; \
    mkdir -p /var/lib/mysql /var/run/mysqld; \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

# COPY script.sh /var/.

COPY script.sh /usr/bin/.
# USER mysql:mysql

CMD ["script.sh"]
