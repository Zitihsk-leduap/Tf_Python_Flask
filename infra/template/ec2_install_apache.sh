#!/bin/bash
set -e

# Move to ubuntu home
cd /home/ubuntu

# Update system
yes | sudo apt update

# Install Apache
yes | sudo apt install apache2

# Enable and start Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Allow Apache through firewall (safe even if UFW is disabled)
sudo ufw allow 'Apache'

# Create a simple index page
echo "<h1>Apache is running on EC2</h1><p>Deployed using Terraform user-data</p>" | sudo tee /var/www/html/index.html

# Set correct permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
