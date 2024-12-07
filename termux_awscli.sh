# Update and install dependencies
pkg update && pkg upgrade -y
pkg install -y curl unzip

# Download the AWS CLI version 2 bundle
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"

# Unzip the bundle
unzip awscliv2.zip

# Install the AWS CLI
./aws/install

# Verify the installation
aws --version

# Clean up
rm -rf awscliv2.zip aws
