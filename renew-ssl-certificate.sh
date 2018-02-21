# install certbot (letsencrypt client) in current dir
rm ./certbot-auto

wget https://dl.eff.org/certbot-auto

chmod a+x ./certbot-auto
#./certbot-auto --help

# Stop lighttpd
/etc/init.d/lighttpd stop

# Renew certificate
./certbot-auto certonly --standalone --renew-by-default -d braindump.wilcomenge.nl -d braindump-test.wilcomenge.nl -d ffbestellen.wilcomenge.nl -d um.wilcomenge.nl -d r2d2.wilcomenge.nl -d documents.wilcomenge.nl -d soundboard.wilcomenge.nl -d counter.wilcomenge.nl

# Combine and copy cert
# rm /etc/letsencrypt/live/braindump.wilcomenge.nl/ssl.pem
# cat /etc/letsencrypt/live/braindump.wilcomenge.nl/privkey.pem /etc/letsencrypt/live/braindump.wilcomenge.nl/cert.pem > /etc/letsencrypt/live/braindump.wilcomenge.nl/ssl.pem

# Start lighttpd
/etc/init.d/lighttpd start
