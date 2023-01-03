
FROM debian:buster

EXPOSE 443

RUN apt-get -y update && apt-get -y install nginx openssl && \
	mkdir -p /etc/nginx/ssl


RUN	openssl req -newkey rsa:2048 -nodes -keyout /etc/nginx/ssl/key.pem -x509 -days 365 -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=./CN=ereali.42.fr" -out /etc/nginx/ssl/certificate.pem

COPY nginx.conf /etc/nginx/conf.d/.

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
