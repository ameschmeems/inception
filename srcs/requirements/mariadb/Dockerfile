FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/start.sh /tmp/start.sh
COPY ./conf/dbinit.sql /tmp/dbinit.sql

EXPOSE 3306
CMD ["bash", "/tmp/start.sh"]
