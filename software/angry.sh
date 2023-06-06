#!/bin/bash

# Install necessary dependencies
sudo apt-get update
sudo apt-get install -y openjdk-11-jre wget

# Download latest Angry IP Scanner deb package for 64-bit systems
wget https://github.com/angryip/ipscan/releases/download/3.7.6/ipscan_3.7.6_amd64.deb

# Install Angry IP Scanner
sudo dpkg -i ipscan_3.7.6_amd64.deb
if [ $? -eq 0 ]; then
    echo "Angry IP Scanner was installed successfully."
else
    echo "An error occurred while installing Angry IP Scanner."
    exit 1
fi

# Fix missing dependencies, if any
sudo apt-get install -f

# Remove the deb package
rm ipscan_3.7.6_amd64.deb
