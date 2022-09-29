
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install maria-db && \
	mysql_secure_installation

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
