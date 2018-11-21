#!/bin/bash
echo ...
curlay=`setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}'`
if [ "$curlay" = "us" ]
then
	setxkbmap de;
elif [ "$curlay" = "de" ]
then
	setxkbmap us;
fi

