FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

# Setup openSSL
RUN openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=DE/ST=Wob/L=Wob/O=42 School/OU=kpucylo/CN=kpucylo"

COPY ./conf/file.conf /etc/nginx/sites-enabled/default

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
