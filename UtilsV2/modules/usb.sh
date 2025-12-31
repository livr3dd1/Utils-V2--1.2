
GREEN="\e[32m"
RED="\e[31m"
CYAN="\e[36m"
RESET="\e[0m"

if [[ $EUID -ne 0 ]]; then
  echo -e "${RED}[!] Run as root${RESET}"
  sleep 2
  exit 1
fi

echo -e "${CYAN}[>] Detecting USB devices...${RESET}"
lsusb
echo ""

read -p "Enter Vendor ID (ex: 12d1): " VID
read -p "Enter Product ID (ex: 1f01): " PID

echo -e "${GREEN}[>] Switching USB mode...${RESET}"

usb_modeswitch -v 0x$VID -p 0x$PID -W

echo -e "${GREEN}[✓] usb_modeswitch executed${RESET}"
echo -e "${CYAN}[>] Restarting network services...${RESET}"

systemctl restart NetworkManager
sleep 2

echo -e "${GREEN}[✓] Done. Unplug & replug the USB if needed.${RESET}"
sleep 3
exit 0
