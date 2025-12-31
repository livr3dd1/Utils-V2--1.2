#!/bin/bash
echo""

RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

echo""
echo -e "${GREEN}[🛠]Starting Installation...${RESET}"
sleep 10
sudo apt upgrade && sudo apt update -y
sleep 4
sudo apt install linux-headers-$(uname -r)
sleep 1
sudo apt install build-essential -y
sleep 3
sudo apt install git vim fastfetch
sleep 3
echo -e "${GREEN}[🛠]Finished Updating and installing Essentials!, Exiting...${RESET}"
sleep 3
exit
