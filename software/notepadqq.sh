#!/bin/bash

# Add Notepadqq PPA
sudo add-apt-repository ppa:notepadqq-team/notepadqq -y

# Update package list
sudo apt update

# Install Notepadqq
sudo apt install notepadqq -y

echo "Notepadqq has been installed successfully."
