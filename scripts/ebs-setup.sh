#!/bin/bash

# Check disks
lsblk

# Create partition (manual step if needed)
sudo fdisk /dev/xvdf

# Format disk
sudo mkfs.ext4 /dev/xvdf1

# Create mount point
sudo mkdir /data

# Mount volume
sudo mount /dev/xvdf1 /data

# Make permanent mount
echo "/dev/xvdf1 /data ext4 defaults,nofail 0 2" | sudo tee -a /etc/fstab

# Verify
df -h