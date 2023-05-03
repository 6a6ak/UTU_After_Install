#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install Gnome Software Center
echo "Installing Gnome Software Center..."
sudo apt-get install -y gnome-software

# Restart the system (optional)
read -p "Installation complete. Do you want to restart your system now? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]; then
    echo "Restarting the system..."
    sudo reboot
else
    echo "Restart your system manually to complete the installation."
fi
