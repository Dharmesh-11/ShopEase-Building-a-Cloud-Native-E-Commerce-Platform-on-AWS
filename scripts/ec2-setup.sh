#!/bin/bash

# Update system
sudo apt update -y

# Install Nginx
sudo apt install nginx -y

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Create sample webpage
echo "<h1>Welcome to ShopEase 🚀</h1>" | sudo tee /var/www/html/index.html

# Install AWS CLI (optional)
sudo apt install awscli -y

# Verify installation
nginx -v