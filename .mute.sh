#!/bin/sh
pamixer -t
mut=$(pamixer --get-mute)
if [ "$mut" = "true" ];
then
	notify-send Volume muted
fi
if [ "$mut" = "false" ];
then
	notify-send Volume unmuted
fi
#notify-send Volume $mut
