#!/bin/bash

#welcome to the cherry on the top of the cake

RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

echo""
echo -e "${CYAN}[🛡]Starting the big hotfix, you may need to restart after doing it, the script will do it anyways, We are helping you!${RESET}"
echo""
sleep 1
echo -e "${BOLD}Warmup... ignore this..${RESTART}
sleep 10
clear
echo -e "${GREEN}[+]Starting APT Fix${RESET}"
sleep 1
#---
sudo apt clean
sudo apt autoclean
sleep 1
rm -f /var/lib/dpkg/lock*
rm -f /var/cache/apt/archives/lock
sleep 1
dpkg --configure -a
apt -f install -y
sleep 1
apt update
#---
clear

echo""
echo -e "${CYAN}[+]Finished Apt Fix! Starting Wifi Fix....${RESET}"
echo "----------------------------------------------------------------"
sleep 4
sudo nmcli networking off
sleep 2
sudo nmcli networking on
sleep 2
resolvectl flush-caches
sleep 4
systemctl restart NetworkManager
sleep 1
systemctl restart networking
sleep 4
systemctl restart 
sleep 3
clear
echo""
echo -e "${CYAN}[+]Finished Wifi Fix! Starting Audio Fix,  Services and PATH Fix...${RESET}"
sleep 4
systemctl --user restart pipewire pipewire-pulse wireplumber
sleep 3
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$HOME/.local/bin"

if [ -n "$ZSH_VERSION" ]; then
    source ~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
    source ~/.bashrc
fi

hash -r
echo "[✓] PATH fixed and reloaded"
sleep 2
systemctl --failed --no-legend | awk '{print $1}' | xargs -r systemctl restart
sleep 4
clear
echo""
echo -e "${CYAN}[+]Fixed! Starting advanced and Final Fixes (you might get restarted so dont worry friend)${RESET}"
sleep 5
clear
apt autoremove -y
apt autoclean -y
apt clean
sleep 2
journalctl --vacuum-time=7d
sleep 1
sync
echo 3 > /proc/sys/vm/drop_caches
sleep 4

modprobe -r usb_storage
modprobe usb_storage
sleep 2
udevadm control --reload
udevadm trigger
sleep 3

systemctl reset-failed
sleep 1
systemctl daemon-reexec
sleep 3
# systemd core
systemctl daemon-reexec
sleep 2
systemctl daemon-reload
sleep 2
systemctl reset-failed
sleep 4

# networking
systemctl restart NetworkManager || systemctl restart networking
sleep 3
clear
nmcli networking off
sleep 2
nmcli networking on

# audio (PipeWire / Pulse)
systemctl --user restart pipewire pipewire-pulse wireplumber 2>/dev/null
sleep 2
# bluetooth
systemctl restart bluetooth 2>/dev/null
sleep 2
# dbus (con cuidado)
systemctl restart dbus
sleep 3
# cron / timers
systemctl restart cron 2>/dev/null
systemctl restart systemd-timesyncd 2>/dev/null
sleep 4
# udev (hardware reload)
udevadm control --reload
udevadm trigger
sleep 3
# flush caches
sync
echo 3 > /proc/sys/vm/drop_caches

sleep 4
clear
sudo update-grub
sleep 3
sudo update-initramfs -u
sleep 4
clear
echo -e "${CYAN}[🛡]Yes! it finally finished pal... now we are going to restart your computer, have fun and bye!${RESTART
sleep 6
reboot
