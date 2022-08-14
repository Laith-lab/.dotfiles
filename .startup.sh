#!/bin/bash

weather=$(curl wttr.in/city=doha)
quote=$(motivate)


echo "$quote"

echo "A. exit"
echo "B. open ~/.bashrc"
echo "C. open weather"
echo "D. Temperature Converter"
echo "E. open tmux"
echo "F. coder aesthetic"
echo "G. random quote"
echo "H. Open neovimRC"

while true; do

	read -p "Options: " opt

	case $opt in
		[aA]) exit;;
		[bB]) nvim ~/.bashrc;;
		[cC]) echo "$weather";;
		[dD]) cd ~/'C files'/comp; ./a.out;;
		[eE]) tmux;;
		[fF]) ./.acsii.sh; neofetch;;     
		[gG]) echo "$quote";;
		[hH]) nvim ~/.config/nvim/init.lua;;
		
	esac
done
