#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

echo""
echo -e "${GREEN}[📡]Restarting everything ...${RESET}"
sleep 4
systemctl restart NetworkManager
sleep 1
nmcli networking off
sleep 1
nmcli networking on
systemctl restart networking
sleep 1
systemctl restart systemd-resolved
sleep 4
echo -e "${GREEN}[✅]Restarted!${RESET}"
sleep 2
exit
