#!/bin/bash

if [ ! -f $HOME/.config/kwinrc ]; then
  kwriteconfig5 --file $HOME/.config/kwinrc --group Compositing --key Enabled false
fi
if [ ! -f $HOME/.config/kscreenlockerrc ]; then
  kwriteconfig5 --file $HOME/.config/kscreenlockerrc --group Daemon --key Autolock false
fi
sudo sed -i 's/resize=remote/resize=scale/g' /kclient/public/index.html
sudo mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED.bak
setterm blank 0
setterm powerdown 0
xrandr -s 1920x1080
/usr/bin/startplasma-x11 > /dev/null 2>&1