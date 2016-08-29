# install certbot (letsencrypt client) in current dir
rm ./certbot-auto

wget https://dl.eff.org/certbot-auto

chmod a+x ./certbot-auto
#./certbot-auto --help

# Stop lighttpd
/etc/init.d/lighttpd stop

# Renew certificate
./certbot-auto certonly --standalone --renew-by-default -d <hostname>


# Start lighttpd
/etc/init.d/lighttpd start

# Combine and copy cert
rm /etc/letsencrypt/live/<hostname>/ssl.pem
cat /etc/letsencrypt/live/<hostname>/privkey.pem /etc/letsencrypt/live/<hostname>/cert.pem > /etc/letsencrypt/live/<hostname>/ssl.pem
