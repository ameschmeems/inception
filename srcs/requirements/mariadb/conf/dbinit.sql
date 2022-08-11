/* create the database */
CREATE DATABASE wordpress;

/* set password for root */
ALTER USER 'root'@'localhost' IDENTIFIED BY '4242';
FLUSH PRIVILEGES;

/* create a basic user */
CREATE USER 'dummy'@'localhost' IDENTIFIED BY '42';

/* create admin user for wordpress*/
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp'@'wordpress.inception' IDENTIFIED BY '4242' with grant option;

/* update privileges */
FLUSH PRIVILEGES;
