#!/bin/bash

chown www-data:www-data /var/www/html
unzip ./latest.zip && rm ./latest.zip
chown  -R www-data:www-data /var/www/wordpress
mv -n ./wordpress/* html
chown www-data:www-data /tmp/wp-config.php
mv /tmp/wp-config.php ./html
exec php-fpm7.3 -F
