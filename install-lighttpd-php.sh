#!/bin/bash

# Install Lightpd
apt-get update
apt-get install -y lighttpd

# Install php5 + sqlite + needed extensions
apt-get -y install sqlite3 php5-common php5-cgi php5 php5-sqlite php5-imap

# tell lighttpd about php
lighty-enable-mod fastcgi-php
service lighttpd force-reload

# Give pi user ownership of /var/www dir
chown www-data:www-data /var/www
chmod 775 /var/www
usermod -a -G www-data pi

# reboot
shutdown -r now
