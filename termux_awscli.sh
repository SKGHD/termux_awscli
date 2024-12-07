#!/data/data/com.termux/files/usr/bin/bash

# Update and install dependencies
pkg update && pkg upgrade -y
pkg install -y curl unzip

# Download the AWS CLI version 2 bundle
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"

# Unzip the bundle
unzip awscliv2.zip

# Create necessary directories
mkdir -p /data/data/com.termux/files/usr/lib/aws

# Move AWS CLI files to the appropriate location
mv aws/dist/* /data/data/com.termux/files/usr/lib/aws

# Create a symbolic link
ln -s /data/data/com.termux/files/usr/lib/aws/aws /data/data/com.termux/files/usr/bin/aws

# Clean up
rm -rf awscliv2.zip aws

# Verify the installation
aws --version
