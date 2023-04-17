#!/bin/bash

# Update system packages
sudo apt update

# Install necessary tools and dependencies
sudo apt install -y build-essential gcc make perl

echo "Please download the latest VMware Workstation Player bundle from:"
echo "https://www.vmware.com/go/getplayer-linux"
echo "Save the downloaded file in the same directory as this script."
read -p "Press Enter after you have downloaded the file..."

# Find the downloaded VMware Workstation Player bundle
vmware_bundle="$(find . -maxdepth 1 -iname "VMware-Player*.bundle" | head -n 1)"

if [ -z "$vmware_bundle" ]; then
    echo "Error: VMware Workstation Player bundle not found. Please make sure the file is in the same directory as this script."
    exit 1
fi

# Make the downloaded file executable
chmod +x "$vmware_bundle"

# Run the VMware Workstation Player installer
sudo ./"$vmware_bundle"

echo "VMware Workstation Player installation completed."
