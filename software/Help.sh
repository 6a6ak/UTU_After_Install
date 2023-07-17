#!/bin/bash
clear

text="\e[1m                  Ubuntu Installer              \e[0m"
footer="\e[1m                                                \e[0m"
color="\e[44m"
width=$(tput cols)
padding=$((($width - ${#text}) ))
#tput cup 2 $padding
echo -ne "${color}${text}\033[0m\n"

echo "  "



while true; do
    echo " Help Instructions:"
    echo " __________________"
    echo
  
    echo "Help for read instruction of options - Shows this help information, detailing what each command does."
    echo "U-U for apt-update-upgrade - Updates the list of available packages and their versions, and upgrades any outdated packages."
    echo "Chrome for Install Chrome - Installs the Google Chrome web browser."
    echo "Git for Install GIT - Installs Git, a version control system."
    echo "Python for Install Python3 - Installs Python 3, the latest version of Python."
    echo "-Graphics [Gimp,InkScape] - Installs graphic design software, GIMP and InkScape."
    echo "-Utility - Installs various utility software, including Unrar, Indicator-multiload, CopyQ, and GDidks."
    echo "-Downloader [Uget] - Installs uGet, a download manager."
    echo "-Server [Ansible] - Installs Ansible, an open-source automation tool."
    echo "-Network [Angry] - Installs network tools including the Angry IP Scanner."
    echo "-Soft Center [Softcenter] - Install software center for Ubuntu."
    echo "-Chat [Frenz,Slack] - Installs chat and communication software such as Frenz and Slack."
    echo "-IDE & ... [PhpStorm,VSCode, Notepadqq] - Installs IDEs and text editors, including PhpStorm, VSCode, and Notepadqq."
    echo "-Music [Spotify] - Installs Spotify, a digital music streaming service."
    echo "Filezilla for install Filezilla - Installs FileZilla, a FTP client."
    echo "Unity for install Unity - Installs Unity, a platform for creating 3D, 2D VR & AR visualizations."
    echo "Openssl - Installs OpenSSL, a toolkit for SSL and TLS protocols."
    echo "Vmware for Install Vmware - Installs VMware, a virtualization software."
    echo "Update for Update Drivers - Updates the system's device drivers."
    echo "_______________"
    echo "0.Back to Menu."
    echo

    read -p "    Select: " option

    case $option in 
        1) 
            cd ..
            ./lnstaller.sh;;
        Help) 
            ./Help.sh;;
        0) 
            exit 0;;
        *) 
            echo "Invalid option.";;
    esac
done
