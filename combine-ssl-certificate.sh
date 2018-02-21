# Stop lighttpd
/etc/init.d/lighttpd stop

# Renew certificate
#./certbot-auto certonly --standalone --renew-by-default -d braindump.wilcomenge.nl -d braindump-test.wilcomenge.nl -d ffbestellen.wilcomenge.nl -d um.wilcomenge.nl -d r2d2.wilco$

# Combine and copy cert
rm /etc/letsencrypt/live/braindump.wilcomenge.nl-0003/ssl.pem
cat /etc/letsencrypt/live/braindump.wilcomenge.nl-0003/privkey.pem /etc/letsencrypt/live/braindump.wilcomenge.nl-0003/cert.pem > /etc/letsencrypt/live/braindump.wilcomenge.nl-0003/ssl.pem

# Start lighttpd
/etc/init.d/lighttpd start
