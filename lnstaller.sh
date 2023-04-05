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
 echo "     1. apt-update-upgrade"
 echo "     2. Install Chrome "
 echo "     3. Install Wifi-Driver"
 echo "     4. Install Python3"
 echo
 echo "     5. Install ***"
 echo "     6. Install ****"
 echo "     7. Install ****"
 echo "     8. Restart ****"   
 echo "          0. Exit"
  read -p "     Option: " option

  # Execute option
  case $option in
 1) ./software/update.sh;;
 2) ./software/chrome_installer.sh;;
 3) ./software/wifi-driver.sh;;
 4) ./software/python3.sh;;
 echo
 5) ./software/MonDB_installer.sh;;
 6) ./software/install_composer.sh;;
 7) ./software/install_yarn.sh;;
 8) ./software/restart_apache.sh;;
 0) exit;;
    *) echo "Invalid option.";;
  esac
done

exit 0
