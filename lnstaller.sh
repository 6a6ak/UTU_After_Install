#!/bin/bash
clear
while true; do

text="\e[1m                  Ubuntu Installer              \e[0m"
footer="\e[1m                                                \e[0m"
color="\e[44m"
width=$(tput cols)
padding=$((($width - ${#text}) ))
#tput cup 2 $padding
echo -ne "${color}${text}\033[0m\n"

echo "  "
# Main loop

  # Menu options
 echo "  Type the name of software to install"
 echo "     U-U for apt-update-upgrade"
 echo "     Chrome for Install Chrome "
 echo "     Git for Install GIT
 echo "     Python for Install Python3"
 echo "     -Graphics [Gimp,InkScape]"
 echo "     -Utility [Unrar, Indicator-multiload]"
 echo "     -Downloader [Uget]"
 echo "     -Server [Ansible]"
 echo "     -Network [Angry]"
 echo "           +Angry IP SCanner"
 echo "     -Soft Center [Softcenter]"

 echo "     -Chat [Frenz,Slack]"
 echo "     -IDE & ... [PhpStorm,VSCode, Notepadqq]"
 echo "     -Music [Spotify]"
 echo "     Filezilla for install Filezilla"
 echo "     Unity for install Unity"
 echo "     Openssl"
 echo "     Vmware for Install Vmware"
 echo "     Update for Update Drivers"
 echo ""
echo -ne "${color}${footer}\033[0m\n"
 #echo "     8. Restart ****"   
 echo
 echo "          0. Exit"
 echo
  read -p "     Software Name: " option
  # Execute option
  case $option in
 U-U) ./software/update.sh;;
 Chrome) ./software/chrome_installer.sh;;
 Unrar)  ./software/unrar.sh;;
 Python) ./software/python3.sh;;
 Frenz) ./software/franz.sh;;
 Slack) ./software/slack.sh;;
 Filezilla) ./software/filezilla.sh;;
 Unity) ./software/unity/unity.sh;;
 Openssl) ./software/unity/open_ssl_unity.sh;;
 InkScape) ./software/inkscape.sh;;
 Gimp) ./software/gimp.sh;;
 Vmware) ./software/vmware.sh;;
 PhpStorm) ./software/PhpStorm.sh;;
 VSCode) ./software/vscode_installer.sh;;
 Update) ./software/ubuntu-driver.sh;;
 Spotify) ./software/spotify.sh;;
 Ansible) ./software/ansible.sh;;
 Softcenter) ./software/software-center.sh;;
 Notepadqq) ./software/notepadqq.sh;;
 Angry) ./software/angry.sh;;
 Indicator-multiload) ./software/multiload.sh;;
 Uget) ./software/uget.sh;;
 Git) ./software/git.sh;;
 0) exit;;
    *) echo "Invalid option.";;
  
  esac
done

exit 0
