
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install mariadb-server && \
	  service mysql start && \
	mysql -e "GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION; FLUSH PRIVILEGES;" \
	 && service mysql start

COPY script.sh /var/.

CMD ["sh", "/var/script.sh"]
