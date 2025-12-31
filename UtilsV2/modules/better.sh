#!/bin/bash
 RED="\e[31m"
 GREEN="\e[32m"
 CYAN="\e[36m"
 BOLD="\e[1m"

 RESET="\e[0m"

echo -e "${GREEN}[+]Starting installing common libraries...${RESET}"
sleep 3
sudo apt install -y \
  build-essential \
  dkms \
  linux-headers-$(uname -r) \
  curl wget git ca-certificates
sleep 3

sudo apt install -y \
  libc6 \
  libstdc++6 \
  libgcc-s1 \
  libglib2.0-0 \
  libx11-6 libxext6 libxrender1 libxtst6 \
  libxrandr2 libxinerama1 libxcursor1 libxi6
sleep 1
sudo apt install -y vim btop qpwgraph
sleep 3
echo -e "${GREEN}[🧰]Installed succesfully!. Closing...${RESET}"
