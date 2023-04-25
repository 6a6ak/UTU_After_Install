#!/bin/bash

# Get the latest GitKraken release URL for Linux
DOWNLOAD_URL=$(curl -s https://api.github.com/repos/Axosoft/gitkraken/releases/latest | grep "browser_download_url.*gitkraken-amd64.deb" | cut -d : -f 2,3 | tr -d \")

# Download the GitKraken Debian package
echo "Downloading GitKraken..."
curl -L -o gitkraken-amd64.deb $DOWNLOAD_URL

# Install GitKraken
echo "Installing GitKraken..."
sudo dpkg -i gitkraken-amd64.deb

# Install missing dependencies, if any
sudo apt-get install -f

# Remove the downloaded package
rm gitkraken-amd64.deb

echo "GitKraken installation completed successfully!"

