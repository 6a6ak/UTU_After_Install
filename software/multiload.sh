#!/bin/bash

# Ask for confirmation before proceeding with apt update
read -p "Do you want to update the package list? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "Updating package list..."
sudo apt update -y

# Ask for confirmation before proceeding with the installation
read -p "Do you want to install indicator-multiload? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "Installing indicator-multiload..."
sudo apt install indicator-multiload -y

# Start indicator-multiload
echo "Starting indicator-multiload..."
nohup indicator-multiload &

echo "Installation complete."
