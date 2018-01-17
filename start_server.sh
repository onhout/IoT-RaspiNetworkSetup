#!/bin/sh -e

# Start the WiFi Configure script
# su -c "cd /usr/share/configure_wifi/Configuration_App/ && rails s -b 10.0.0.1 -e production -p 80 -d"
cd /usr/share/configure_wifi/Configuration_App/ && /usr/local/bin/rails s -b 10.0.0.1 -e production -p 80 -d
