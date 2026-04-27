#!/bin/bash

# Replace fs-xxxx with your EFS ID
EFS_ID="fs-xxxx"

# Create mount directory
sudo mkdir -p /var/www/html/uploads

# Install NFS client
sudo apt update -y
sudo apt install nfs-common -y

# Mount EFS
sudo mount -t nfs4 $EFS_ID:/ /var/www/html/uploads

# Set permissions
sudo chown -R ubuntu:ubuntu /var/www/html/uploads

# Verify mount
df -h