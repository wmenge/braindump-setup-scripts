#!/bin/bash

# remove apache
apt-get remove apache2
apt-get remove apache2*
apt-get autoremove

# Install Lightpd
apt-get update
apt-get install -y lighttpd

# Install php7 + sqlite + needed extensions
apt-get -y install sqlite3 php php-cgi php-imap php-sqlite3 php-mbstring

# tell lighttpd about php
lighty-enable-mod fastcgi-php
service lighttpd force-reload

# Give pi user ownership of /var/www dir
chown www-data:www-data /var/www
chmod 775 /var/www
usermod -a -G www-data pi

# reboot
shutdown -r now
