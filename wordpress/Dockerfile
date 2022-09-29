
FROM debian:buster

EXPOSE 9000

RUN apt-get -y update && apt-get -y install php php-fpm

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
