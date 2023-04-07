#!/bin/bash

# Update the package repository
sudo apt update

# Install ClamAV and its dependencies
sudo apt install clamav clamav-daemon

# Update the virus definitions
sudo freshclam

# Configure the ClamAV daemon to run on startup
sudo systemctl enable clamav-daemon

# Start the ClamAV daemon
sudo systemctl start clamav-daemon

# Verify the installation
sudo systemctl status clamav-daemon
