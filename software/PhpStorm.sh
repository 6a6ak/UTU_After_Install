#!/bin/bash

function install_phpstorm {
    # Install PHPStorm via snap
    sudo snap install phpstorm --classic

    echo "PHPStorm installed successfully!"
}

function uninstall_phpstorm {
    # Remove PHPStorm via snap
    sudo snap remove phpstorm

    echo "PHPStorm uninstalled successfully!"
}

while true; do
    echo "Enter 1 to install PHPStorm"
    echo "Enter 2 to uninstall PHPStorm"
    echo "Enter 0 to exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            install_phpstorm
            ;;
        2)
            uninstall_phpstorm
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
