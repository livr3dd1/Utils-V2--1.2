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
chmod +x /opt/utils/modules/*
sudo ln -sf /opt/utils/utils.sh /usr/local/bin/utils

sleep 2
echo "[✓] Installation complete"
echo ""
echo "Run with: utils"
