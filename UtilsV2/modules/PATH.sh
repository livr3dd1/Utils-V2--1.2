#!/bin/bash

RED="\e[31m" 
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"




echo "${GREEN}[+] Fixing PATH...${RESET}"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.local/bin"

if [ -n "$ZSH_VERSION" ]; then
    source ~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
    source ~/.bashrc
fi

hash -r
echo "[✓] PATH fixed and reloaded"
sleep 2
exit
