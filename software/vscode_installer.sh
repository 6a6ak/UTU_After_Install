#!/bin/bash

while true
do
    echo "Press 1 to install Visual Studio Code"
    echo "Press 2 to uninstall Visual Studio Code"
    echo "Press 0 to exit"

    read choice

    case $choice in
        1)
            echo "Installing Visual Studio Code"
            sudo apt update
            sudo apt install -y software-properties-common apt-transport-https wget
            wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
            sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
            sudo apt update
            sudo apt install -y code
            echo "Visual Studio Code has been installed successfully!"
            ;;
        2)
            echo "Uninstalling Visual Studio Code"
            sudo apt purge -y code
            sudo apt autoremove -y
            rm -rf ~/.config/Code
            rm -rf ~/.vscode
            echo "Visual Studio Code has been uninstalled successfully!"
            ;;
        0)
            echo "Exiting"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done

