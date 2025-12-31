#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

echo""
echo -e "${GREEN}[⚙️]Cleaning cache...${RESET}"
sleep 2
sudo apt clean
apt autoclean
sleep 2
journalctl --vacuum-time=3d
sleep 1
fc-cache -fv
sleep 4
sudo apt clean
rm -rf ~/.cache/thumbnails/*
sudo journalctl --vacuum-time=7d
sleep 3
rm -rf ~/.cache/*
sleep 1
rm -rf ~/.mozilla/firefox/*/cache2/*
sleep 1
rm -rf ~/.cache/chromium/*
echo -e "${GREEN}[⚙]Cleaned!, leaving...${RESET}"
sleep 3
exit
