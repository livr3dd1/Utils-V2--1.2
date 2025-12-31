#!/bin/bash
RED="\e[31m" 
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"


echo -e  "${GREEN}[+] Fixing common system issues...${RESET}"
sleep 3

sudo rm -f /var/lib/dpkg/lock*
sudo rm -f /var/cache/apt/archives/lock
sleep 3
sudo dpkg --configure -a
sleep 1
sudo apt -f install -y
sleep 1
sudo apt update
sleep 1
systemctl daemon-reexec
systemctl daemon-reload
sleep 4
sudo apt autoclean
sleep 1
sudo apt clean
sleep 4
sudo systemctl restart systemd-resolved
sudo nmcli networking off
sleep 1
sudo nmcli networking on
sleep 1
resolvectl flush-caches


echo  -e "${GREEN}[✓] Common system problems fixed${RESET}"



