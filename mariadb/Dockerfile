
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install mariadb-server && \
	 && \
	mysql -e "GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION; FLUSH PRIVILEGES"

COPY script.sh /etc/script.sh

CMD ["sh", "-c", "/etc/script.sh"]
