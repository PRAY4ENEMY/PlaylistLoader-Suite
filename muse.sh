#!/bin/sh

ls ~/Music/ > ~/Music/m.txt

eval $(awk '{print "var"NR"="$1}' m.txt)

choice=$(cat m.txt) 

chosen=$(echo -e "$choice" | dmenu -i -p "Choose a Playlist")

case "$chosen" in 
	$var1) amberol ~/Music/$var1;;
	$var2) amberol ~/Music/$var2;;
	$var3) amberol ~/Music/$var3;;
	$var4) amberol ~/Music/$var4;;
	$var5) amberol ~/Music/$var5;;
esac	
