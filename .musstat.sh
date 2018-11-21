#!/bin/bash
if [ "$(which playerctl)" = "false" ]
then
	echo "Install 'playerctl'"
	exit 1
fi

if [ "$(playerctl status)" = "Playing" ] 
then
	echo "  $(playerctl metadata title)"
	exit 0
elif [ "$(playerctl status)" = "Paused" ]
then
	echo  " $(playerctl metadata title)"
	exit 0
fi
