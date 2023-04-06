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
 echo "     5. Install Franz"
 echo "     6. Install Slack"
 echo "     7. Install Filezilla"
 echo
 echo "     8. Restart ****"   
 echo "          0. Exit"
  read -p "     Option: " option

  # Execute option
  case $option in
 1) ./software/update.sh;;
 2) ./software/chrome_installer.sh;;
 3) ./software/wifi-driver.sh;;
 4) ./software/python3.sh;;
 5) ./software/franz.sh;;
 6) ./software/slack.sh;;
 7) ./software/filezilla.sh;;
 
 8) ./software/restart_apache.sh;;
 0) exit;;
    *) echo "Invalid option.";;
  esac
done

exit 0