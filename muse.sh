#!/bin/sh

ls ~/Music/ > ~/Music/m.txt

eval $(awk '{print "var"NR"="$1}' ~/Music/m.txt)

choice=$(cat ~/Music/m.txt) 

chosen=$(echo -e "$choice" | dmenu -i -p "Choose a Playlist")

case "$chosen" in 
	$var1) setsid -f amberol ~/Music/$var1;;
	$var2) setsid -f amberol ~/Music/$var2;;
	$var3) setsid -f amberol ~/Music/$var3;;
	$var4) setsid -f amberol ~/Music/$var4;;
	$var5) setsid -f amberol ~/Music/$var5;;
esac	
