
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install mariadb-server mariadb-client

<<<<<<< HEAD
RUN mkdir -p /var/lib/mysql /var/run/mysqld ;\
	chmod -R 775 /var/lib/mysql; \
	chmod -R 755 /var/run/mysqld ; \
=======
RUN mkdir -p /var/lib/mysql /var/run/mysqld; \
	chmod -R 755 /var/lib/mysql; \
	chmod -R 755 /var/run/mysqld; \ 
>>>>>>> 09efd2749e105b2306a6f673ec93dac7f136ccaa
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

# COPY script.sh /var/.
COPY	50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY script.sh /usr/bin/.

<<<<<<< HEAD
ENTRYPOINT ["script.sh"]

CMD ["mysqld" ,"--user=mysql", "--bind-address=0.0.0.0"]
=======
# CMD ["script.sh"]
# COPY script.sh /usr/bin/.

ENTRYPOINT ["script.sh"]
CMD ["mysqld" ,"--user=mysql", "--bind-address=0.0.0.0"]
>>>>>>> 09efd2749e105b2306a6f673ec93dac7f136ccaa
