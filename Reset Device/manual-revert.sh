#!/bin/sh -e
sudo rm -f /etc/dhcpcd.conf
sudo cp -f /usr/share/configure_wifi/Reset_Device/static_files/dhcpcd.conf.apclient /etc/dhcpcd.conf
sudo chown root.netdev /etc/dhcpcd.conf
sudo chmod 664 /etc/dhcpcd.conf
sudo rm -f /etc/rc.local
sudo cp /usr/share/configure_wifi/Reset_Device/static_files/rc.local.apclient /etc/rc.local
sudo chown root.root /etc/rc.local
sudo chmod 755 /etc/rc.local
sudo mv /etc/wpa_supplicant/wpa_supplicant.conf.OLD /etc/wpa_supplicant/wpa_supplicant.conf
sudo chown root.root /etc/wpa_supplicant/wpa_supplicant.conf
sudo chmod 600 /etc/wpa_supplicant/wpa_supplicant.conf
sudo systemctl disable dnsmasq
sudo systemctl disable hostapd
sudo reboot
