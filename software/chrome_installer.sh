#!/bin/bash

# Download the Google Chrome signing key and add it to the system keyring
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Add the Google Chrome repository to the system's sources list
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Update the package lists
sudo apt-get update

# Install Google Chrome
sudo apt-get install google-chrome-stable
