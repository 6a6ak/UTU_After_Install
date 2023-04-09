#!/bin/bash

# Add the Unity Hub Debian repository
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'

# Add the public signing key
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -

# Update the package cache and install the Unity Hub package
sudo apt update
sudo apt-get install unityhub



#dir  is /usr/lib/x86_64-linux-gnu/libssl.a
