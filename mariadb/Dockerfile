
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install mariadb-server && \
	mysql_secure_installation

CMD ["sh", "-c", "script.sh"]
