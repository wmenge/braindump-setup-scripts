# Stop lighttpd
/etc/init.d/lighttpd stop

# Renew certificate
./certbot-auto certonly --standalone --renew-by-default -d <hostname>

# Combine and copy cert
rm /etc/letsencrypt/live/<hostname>/ssl.pem
cat /etc/letsencrypt/live/<hostname>/privkey.pem /etc/letsencrypt/live/<hostname>/cert.pem > /etc/letsencrypt/live/<hostname>/ssl.pem

# Start lighttpd
/etc/init.d/lighttpd start
