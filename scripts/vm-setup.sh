#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Add user to docker group
sudo usermod -aG docker $USER

# Create application directory
sudo mkdir -p /opt/mean-crud-app
sudo chown $USER:$USER /opt/mean-crud-app

# Create necessary directories
mkdir -p /opt/mean-crud-app/backend/logs

echo "VM setup completed! Please logout and login again for group changes to take effect."
echo "Then run: cd /opt/mean-crud-app && docker-compose up -d"