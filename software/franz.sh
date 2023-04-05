#!/bin/bash

# Add the Franz repository key to the system
wget -qO - https://github.com/meetfranz/franz/releases/download/v5.7.0/franz-5.7.0-linux-x86_64.tar.gz | tar xz --strip-components=1 -C Franz

# Add the Franz repository to the system's list of repositories
echo "deb https://github.com/meetfranz/franz/releases/download/v5.7.0/franz-5.7.0-linux-x86_64.tar.gz ./" | sudo tee /etc/apt/sources.list.d/franz.list

# Update the package list
sudo apt-get update

# Install Franz
sudo apt-get install franz
