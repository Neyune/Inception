
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install mariadb-server mariadb-client

RUN mkdir -p /var/lib/mysql /var/run/mysqld; \
	chmod -R 755 /var/lib/mysql; \
	chmod -R 755 /var/run/mysqld 
    # chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

# COPY script.sh /var/.

COPY script.sh /usr/bin/.

CMD ["script.sh"]
