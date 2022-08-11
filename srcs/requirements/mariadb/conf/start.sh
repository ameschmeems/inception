chmod -R 777 /var/lib/mysql
exec mysqld --user=mysql --init-file=/tmp/dbinit.sql
