#!/bin/bash

# Download the Franz package
wget https://github.com/meetfranz/franz/releases/download/v5.9.2/franz_5.9.2_amd64.deb

# Install the package
sudo apt install ./franz_5.9.2_amd64.deb

# Clean up the downloaded package
rm franz_5.9.2_amd64.deb
