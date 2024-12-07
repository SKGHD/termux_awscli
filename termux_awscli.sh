#!/data/data/com.termux/files/usr/bin/bash

# Update and install dependencies
pkg update && pkg upgrade -y
pkg install -y curl unzip

# Remove existing AWS CLI installation if it exists
if [ -d "/data/data/com.termux/files/usr/lib/aws" ]; then
    rm -rf /data/data/com.termux/files/usr/lib/aws
    rm -f /data/data/com.termux/files/usr/bin/aws
fi

# Download the AWS CLI version 2 bundle for ARM architecture
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"

# Unzip the bundle
unzip awscliv2.zip

# Install the AWS CLI
./aws/install -i /data/data/com.termux/files/usr/lib/aws -b /data/data/com.termux/files/usr/bin

# Clean up
rm -rf awscliv2.zip aws

# Verify the installation
aws --version