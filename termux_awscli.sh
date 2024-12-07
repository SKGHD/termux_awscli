#!/data/data/com.termux/files/usr/bin/bash

# Update and install dependencies
pkg update && pkg upgrade -y
pkg install -y curl tar gzip

# Download the AWS CLI version 2 bundle for ARM architecture
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64-2.2.47.zip" -o "awscliv2.zip"

# Unzip the bundle
unzip awscliv2.zip

# Install the AWS CLI
./aws/install -i /data/data/com.termux/files/usr/lib/aws -b /data/data/com.termux/files/usr/bin

# Clean up
rm -rf awscliv2.zip aws

# Verify the installation
aws --version
