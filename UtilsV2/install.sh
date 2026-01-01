#!/bin/bash

echo "[>] Installing Utils v1..."

# dependencias
sudo apt install -y fastfetch usb-modeswitch

# crear estructura
sudo mkdir -p /opt/utils/modules
sudo cp utils.sh /opt/utils/utils.sh
sudo cp -r modules/* /opt/utils/modules

echo ""
chmod +x /opt/utils/utils.sh
chmod +x /opt/utils/modules/common.sh
chmod +x /opt/utils/modules/better.sh
chmod +x /opt/utils/modules/clean.sh
chmod +x /opt/utils/modules/essentials.sh
chmod +x /opt/utils/modules/HOTFIX.sh
chmod +x /opt/utils/modules/kernel.sh
chmod +x /opt/utils/modules/PATH.sh
chmod +x /opt/utils/modules/restart.sh
chmod +x /opt/utils/modules/usb.sh
sleep 2
sudo ln -sf /opt/utils/utils.sh /usr/local/bin/utils

sleep 2
echo "[✓] Installation complete"
echo ""
echo "Run with: utils"
