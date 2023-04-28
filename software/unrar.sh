#!/bin/bash

# Update the package list
sudo apt-get update

# Check if unrar is installed
if ! command -v unrar &> /dev/null
then
    echo "unrar could not be found, installing now..."
    sudo apt-get install -y unrar
else
    echo "unrar is already installed."
fi
