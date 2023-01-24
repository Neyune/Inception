
FROM debian:buster

EXPOSE 3306

RUN apt-get -y update && apt-get -y install mariadb-server

COPY script.sh /var/.

CMD ["sh", "/var/script.sh"]
