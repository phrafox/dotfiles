#!/bin/sh
sudo echo "Starting topbar"
export MONITOR=placeholder
pkill polybar
MONITOR=$1
echo ${MONITOR}
polybar topbar &
sudo rm /tmp/poly1
sudo ln -s /tmp/polybar_mqueue.$! /tmp/poly1
MONITOR=$2
echo ${MONITOR}
polybar topbar &
sudo rm /tmp/poly2
ln -s /tmp/polybar_mqueue.$! /tmp/poly2
