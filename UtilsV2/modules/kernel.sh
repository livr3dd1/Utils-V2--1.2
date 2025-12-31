#!/bin/bash


RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

echo -e "${GREEN}[]Starting the fix... (Your computer will be restarted)
sleep 5

sudo apt install -y linux-headers-$(uname -r)
sleep 1
sudo modprobe usb_storage
sudo modprobe cfg80211
sleep 1
sudo update-grub
sleep 3
sudo update-initrafms
sleep 2
sudo apt install -y firmware-linux firmware-linux-nonfree
sleep 3
echo -e "${GREEN}[⚙️]Done!, your computer will be restarted...${RESET}"
sleep 6
reboot
