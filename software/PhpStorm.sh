#!/bin/bash

function install_phpstorm {
    # Download PHPStorm
    wget -O /tmp/phpstorm.tar.gz https://download.jetbrains.com/webide/PhpStorm-2021.1.tar.gz

    # Extract the archive to /opt directory
    sudo tar -xzf /tmp/phpstorm.tar.gz -C /opt/

    # Create a symlink for the phpstorm executable
    sudo ln -s /opt/PhpStorm-*/bin/phpstorm.sh /usr/local/bin/phpstorm

    # Clean up the downloaded archive
    rm /tmp/phpstorm.tar.gz

    echo "PHPStorm installed successfully!"
}

function uninstall_phpstorm {
    # Remove the symlink
    sudo rm /usr/local/bin/phpstorm

    # Remove the PHPStorm directory
    sudo rm -rf /opt/PhpStorm-*/

    echo "PHPStorm uninstalled successfully!"
}

while true; do
    echo "Enter 1 to install PHPStorm"
    echo "Enter 2 to uninstall and purge PHPStorm (removes configuration files)"
    echo "Enter 0 to exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            install_phpstorm
            ;;
        2)
            uninstall_phpstorm
            # Remove configuration files
            sudo rm -rf ~/.config/JetBrains/PhpStorm*
            echo "PHPStorm purged successfully!"
            ;;
        0)
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            ;;
    esac

    echo ""
done
