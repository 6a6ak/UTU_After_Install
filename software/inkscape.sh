#!/bin/bash

# Update system packages
sudo apt update

# Install Inkscape
sudo apt install -y inkscape

# Install necessary tools for Gravit Designer
sudo apt install -y wget

# Download Gravit Designer .deb package
wget -O gravit-designer.deb https://designer.gravit.io/_downloads/linux/GravitDesigner.zip

# Install Gravit Designer
sudo dpkg -i gravit-designer.deb

# Install missing dependencies, if any
sudo apt-get install -f

# Cleanup
rm gravit-designer.deb

echo "Inkscape and Gravit Designer installation completed."
