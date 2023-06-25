#!/bin/bash
# Ask for confirmation before proceeding with apt update
read -p "Do you want to update the package list? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "Updating package list..."
sudo apt update -y


# Install uGet
sudo apt-get install -y uget
