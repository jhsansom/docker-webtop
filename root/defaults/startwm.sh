#!/bin/bash

if [ -f "${HOME}"/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml ]; then
  sed -i \
    '/use_compositing/c <property name="use_compositing" type="bool" value="false"/>' \
    "${HOME}"/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
fi
sudo mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED.bak
pip
#cd /etc/listener-plugin && web-ext run &
/usr/bin/xfce4-session > /dev/null 2>&1
