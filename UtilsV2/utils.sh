#!/bin/bash

while true; do

RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"


clear
figlet -f small -c "<-- UtilsV1 -->" | lolcat
echo""
echo""
echo -e "${RED} <<---============================================================================================================¬--->>   ${RESET}"
cowsay °Utils does everything for you.. muuu!°
echo -e "${RED} <<---============================================================================================================--->>   ${RESET}"

echo -e "${CYAN}What are you going to do???..${RESET}"
echo""
echo""
echo -e "${GREEN}1)Restart everything about networks${RESET}"
echo""
echo -e "${GREEN}2)Clean cache${RESET}"
echo""
echo -e "${GREEN}3)Install ESSENTIALS AND UPDATE${RESET}"
echo""
echo -e "${GREEN}4)Usb modeswitch for Wifi cards and other types of usb${RESET}"
echo""
echo -e "${GREEN}5)Next page >>${RESET}"
echo""
echo""

read -p "What will you do: " opt

 case $opt in
  1)echo -e "${GREEN}[📡]Opening the module...${RESET}"
   sleep 2

   bash modules/restart.sh
  ;;
  2)echo -e "${GREEN}[⚙]Opening the module...${RESET}"
    sleep 2
    sudo bash modules/clean.sh
  ;;
  3)echo -e "${GREEN}[🛠]Opening the module...${RESET}"
   sleep 2
   sudo bash modules/essentials.sh
  ;;
  4)echo -e "${GREEN}[/]Opening the module...${RESET}"
   sudo bash modules/usb.sh
   ;;
  5)  
      clear
      RED="\e[31m"
      GREEN="\e[32m"
      CYAN="\e[36m"
      BOLD="\e[1m"

      RESET="\e[0m"

       figlet -f small -c "<-- UtilsV1 -->" | lolcat
       echo""
       echo""

       echo -e "${RED} <<---============================================================================================================¬--->>   ${RESET}"
       cowsay °Utils does everything for you.. muuu!°
       echo -e "${RED} <<---============================================================================================================--->>   ${RESET}"

       echo -e "${CYAN}What are you going to do???..${RESET}"
       echo""  
       echo""
       echo -e "${GREEN}1)PATH Reset and fix${RESET}"
       echo""  
       echo -e "${GREEN}2)Fix common system problems${RESET}"
       echo""  
       echo -e "${GREEN}3)Fix system or make it better${RESET}"
       echo""  
       echo -e "${GREEN}4)HotFix for Kernel (advanced problem)${RESET}"
       echo""
       echo -e "${GREEN}5)HOTFIX Everything And Reset it${RESET}"
       echo""
       echo -e "${GREEN}6) Fetch System Information${RESET}"
       echo""
       echo""

       read -p "What will you do: " opti
       case $opti in
         1)echo -e "${GREEN}[📡]Opening the module...${RESET}"
            sleep 2

            bash modules/PATH.sh
          ;;
         2)echo -e "${GREEN}[⚙]Opening the module...${RESET}"
            sleep 2
            sudo bash modules/common.sh
          ;;
         3)echo -e "${GREEN}[🛠]Opening the module...${RESET}"
            sleep 2
            sudo bash modules/better.sh
          ;;
         4)echo -e "${GREEN}[/]Opening the module...${RESET}"
            sleep 2
            sudo bash modules/kernel.sh
          ;;
         5)echo -e "${GREEN}[🛠]Opening the module...${RESET}"
           sudo bash modules/HOTFIX.sh
          ;;

         6)echo -e "${GREEN}[🛠]Fetching Info..."
           sleep 2
           fastfetch
          ;;

       esac
      







 esac



done


