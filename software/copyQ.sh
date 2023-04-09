#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install -y wget gpg software-properties-common

# Add CopyQ's official repository and import its GPG key
wget -nv -O - https://hluk.github.io/CopyQ/debian/pubkey.gpg | sudo gpg --dearmor -o /usr/share/keyrings/copyq-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/copyq-archive-keyring.gpg] https://hluk.github.io/CopyQ/debian/ ./" | sudo tee /etc/apt/sources.list.d/copyq.list

# Update package list and install CopyQ
sudo apt update
sudo apt install -y copyq

# Verify if CopyQ is installed
copyq_version=$(copyq version)
if [ -n "$copyq_version" ]; then
    echo "CopyQ installed successfully. Version: $copyq_version"
else
    echo "Something went wrong. CopyQ installation failed."
fi
