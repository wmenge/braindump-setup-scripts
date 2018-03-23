Installation instructions for setting up Braindump on a clean Raspberry Pi
==========================================================================

Install OS:
-----------
- Download Raspbian: https://downloads.raspberrypi.org/raspbian_lite_latest
- Installation instructions: https://www.raspberrypi.org/documentation/installation/installing-images/README.md
- Copy this repository to your machine:
```
$ sudo atp-get install git
$ cd ~/
$ git clone https://github.com/wmenge/braindump-setup-scripts.git
$ cd braindump-setup-scripts
```

Connectivity:
-------------
- Setup ssh certificate (see SSH with certificate)
- Disable password login and default port (see Disable Ssh password logon)
- `$ sudo sh setup-firewall.sh` (installls and configures firewalll)
- Assign public ip to raspberry pi

Install packages:
-----------------
- `$ sudo sh install-tools.sh` (installs rsync)
- `$ sudo sh install-lighttpd-php.sh` (installs lighttpd+php+sqlite3)

Configure Lighttpd/PHP
----------------------

Setup SSH:
----------
- $ sudo sh setup-ssl-certificate.sh (installs certbot and creates certificate)
- Schedule 'sudo sh renew-ssl-certificate.sh' as monthly cron job


Deploy braindump:
-----------------
- `$ sudo sh configure-braindump.sh` 
- create config file on raspberry pi (/var/www/servers/braindump.[servername]/config/braindump-config.php)
- create config file on raspberry pi (/var/www/servers/braindump.[servername]/public/client/config.js)
- run /var/www/braindump/vendor/bin/phake setup (creates initial db) (TODO: Create config file from phake)
- create new admin user, delete default admin user
- setup cronjob for checking new inbound emails

Setup backup on REMOTE Machine:
-------------------------------
Add command to cronjob on remote machine:
$ curl --user <user>:<pass> https://<api url>/admin/export -O -J
