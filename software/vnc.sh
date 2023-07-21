#!/bin/bash

# Define the URL of the .deb file
DEB_URL="https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer-7.5.1-Linux-x64.deb"

# Define the file name
FILE_NAME="vnc_viewer.deb"

# Download the .deb file
echo "Downloading VNC Viewer..."
curl -o $FILE_NAME $DEB_URL

# Install the .deb file
echo "Installing VNC Viewer..."
sudo dpkg -i $FILE_NAME

# If there are any missing dependencies, fix them
sudo apt-get install -f

echo "VNC Viewer installed successfully!"
