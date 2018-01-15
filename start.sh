#!/bin/sh -e
echo "Setting up file structure..."
mkdir /usr/share/configure_wifi
cp -r * /usr/share/configure_wifi
chmod -r 775 /usr/share/configure_wifi
echo "Starting Main installer script..."
python3 initial_setup.py
