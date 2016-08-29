#!bin/bash

# Setup security stuff

# Install ufw (uncomplicated firewall)
apt-get update
apt-get install ufw

# Configure ufw

# Allow port 80, 443 to everyone in the world
ufw allow 80
ufw allow 443

# Allow all ports on my local network
ufw allow from 192.168.1.0/24

# Allow port <custom ssh port> to everyone
ufw allow <custom ssh port>

ufw --force enable
