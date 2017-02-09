#!/bin/bash
export DISPLAY=:1
Xvfb :1 -screen 0 1600x900x16 &
sleep 7
startlxde &
x11vnc -forever -nopw -httpdir /usr/share/vnc-java/ -httpport 5800 -shared &
cd /root/noVNC && ln -s vnc_auto.html index.html && ./utils/launch.sh --vnc localhost:5900 &
