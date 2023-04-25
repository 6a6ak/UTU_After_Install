#!/bin/bash
clear
while true; do

text="\e[1m                  Ubuntu Installer              \e[0m"
color="\e[44m"
width=$(tput cols)
padding=$(( ($width - ${#text}) / 2 ))
#tput cup 2 $padding
echo -ne "${color}${text}\033[0m\n"

echo "   Server installer Menu!"
# Main loop

  # Menu options
  Echo "Write the name of software to install"
 echo "     U-U for apt-update-upgrade"
 echo "     Chrome for Install Chrome "
 echo "     Python for Install Python3"
 echo "     -Chat [Frenz,Slack]"
 echo "     -IDE & ... [PhpStorm,VSCode]"
 echo "     -Music [Spotify]"
 echo "     Filezilla for install Filezilla"
 echo "     Unity for install Unity"
 echo "     Openssl"
 echo "     Vmware for Install Vmware"
 echo "     InkScape for install InkScape"
 echo "     Update for Update Drivers"
 echo ""
 #echo "     8. Restart ****"   
 echo "          0. Exit"
  read -p "     Option: " option

  # Execute option
  case $option in
 U-U) ./software/update.sh;;
 Chrome) ./software/chrome_installer.sh;;

 Python) ./software/python3.sh;;
 Frenz) ./software/franz.sh;;
 Slack) ./software/slack.sh;;
 Filezilla) ./software/filezilla.sh;;
 Unity) ./software/unity/unity.sh;;
 Openssl) ./software/unity/open_ssl_unity.sh;;
 InkScape) ./software/inkscape.sh;;
 PhpStorm) ./software/PhpStorm.sh;;
 VSCode) ./software/vscode_installer.sh;;
 Update) ./software/ubuntu-driver.sh;;
 Spotify) ./software/spotify.sh;;
 #8) ./software/restart_apache.sh;;
 0) exit;;
    *) echo "Invalid option.";;
  esac
done

exit 0
