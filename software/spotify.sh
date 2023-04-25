#!/bin/bash

# Function to install Spotify
install_spotify() {
  echo "Installing Spotify..."
  curl -sS https://download.spotify.com/debian/pubkey_4E6AF4E5.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/spotify.gpg > /dev/null
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get update && sudo apt-get install -y spotify-client
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
  echo "1. Install Spotify"
  echo "2. Remove Spotify ads"
  echo "3. Uninstall Spotify"
  echo "0. Exit"
  read -p "Enter your choice (0-3): " choice

  case $choice in
    1) install_spotify ;;
    2) remove_ads ;;
    3) uninstall_spotify ;;
    0) echo "Exiting..."; exit 0 ;;
    *) echo "Invalid option. Please enter a number between 0 and 3." ;;
  esac
done
