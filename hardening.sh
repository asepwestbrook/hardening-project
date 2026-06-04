# Enable Firewall
# Update System

sudo apt update && sudo apt upgrade -y

# Reset and set firewall rules

sudo ufw --force reset
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH only from your IP (ensure this matches your host IP)

sudo ufw allow from 192.168.56.0/24 to any port 22

# Allow Nginx web server

sudo ufw allow 'Nginx Full'

# Enable firewall

sudo ufw --force enable

echo "Hardening Complete!"
