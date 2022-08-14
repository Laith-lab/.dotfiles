#!/bin/bash

weather=$(curl wttr.in/city=doha)
quote=$(motivate)


echo "$quote"

echo "A. open NeovimRC"
echo "B. open ~/.bashrc"
echo "C. open weather"
echo "D. Temperature Converter"
echo "E. open tmux"
echo "F. coder aesthetic"
echo "G. random quote"
echo "H. exit"

while true; do

	read -p "Options: " opt

	case $opt in
		[aA]) nvim ~/.config/nvim/init.lua;;
		[bB]) nvim ~/.bashrc;;
		[cC]) echo "$weather";;
		[dD]) cd ~/'C files'/comp; ./a.out;;
		[eE]) tmux;;
		[fF]) echo "██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗    ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗     
██║     ██║████╗  ██║██║   ██║╚██╗██╔╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║     
██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝        ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║     
██║     ██║██║╚██╗██║██║   ██║ ██╔██╗        ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║     
███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗       ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝";neofetch;;
		[gG]) echo "$quote";;
		[hH]) exit;;
		
	esac
done