#!/bin/bash

# Copy config files to lighttpd
cp config-files/braindump.lighttpd.conf /etc/lighttpd/conf-enabled/braindump.lighttpd.conf
cp config-files/ssl-redirect.lighttpd.conf /etc/lighttpd/conf-enabled/ssl-redirect.lighttpd.conf
cp config-files/braindump-php.ini /etc/php5/cgi/conf.d/braindump-php.ini

# Reload web server
service lighttpd force-reload
