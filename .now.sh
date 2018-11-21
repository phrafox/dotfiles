#!/bin/bash
#	for f in /usr/share/figlet/*.[tf]lf; do 
#		font=$f; 
#		echo "\n$font"; 
#		toilet -f ${font:18} $2; 
#	done;
clear
toilet -f future -F border:crop:rainbow "Welcome, $(whoami)"
echo " "
printf "\e[0;26;41m"
printf "\e[0;30;41m"
toilet -f future -F crop "$(date +%H:%M:%S)"
tput sgr0
echo " "
toilet -f future -F crop:metal "$(date +%A,\ %d.\ %b.\ %Y)"
echo " "
neofetch
