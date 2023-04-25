#!/bin/bash

# Function to install Spotify using Snap
install_spotify_snap() {
  echo "Installing Spotify using Snap..."
  sudo snap install spotify
  echo "Spotify has been installed."
}

# Function to install Spotify using Debian package
install_spotify_debian() {
  echo "Installing Spotify using Debian package..."
  curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get update && sudo apt-get install spotify-client
  echo "Spotify has been installed."
}

# Function to remove Spotify ads
remove_ads() {
  echo "Removing Spotify ads..."
  sudo bash -c "echo '0.0.0.0 media-match.com' >> /etc/hosts"
  sudo bash -c "echo '0.0.0.0 adclick.g.doublecklick.net' >> /etc/hosts"
  sudo bash -c "echo '0.0.0.0 www.googleadservices.com' >> /etc/hosts"
  sudo bash -c "echo '0.0.0.0 open.spotify.com' >> /etc/hosts"
  echo "Spotify ads have been removed."
}

# Function to uninstall Spotify
uninstall_spotify() {
  echo "Uninstalling Spotify..."
  sudo apt-get remove -y spotify-client
  echo "Spotify has been uninstalled."
}

# Main loop
while true; do
  echo "Select an option:"
  echo "1. Install Spotify using Snap"
  echo "2. Install Spotify using Debian package"
  echo "3. Remove Spotify ads"
  echo "4. Uninstall Spotify"
  echo "0. Exit"
  read -p "Enter your choice (0-4): " choice

  case $choice in
    1) install_spotify_snap ;;
    2) install_spotify_debian ;;
    3) remove_ads ;;
    4) uninstall_spotify ;;
    0) echo "Exiting..."; exit 0 ;;
    *) echo "Invalid option. Please enter a number between 0 and 4." ;;
  esac
done
