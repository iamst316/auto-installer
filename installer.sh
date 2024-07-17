#!/usr/bin/bash

echo "Hello World!"

# exec neofetch

# echo "zsh or bash? [zsh/bash] "
#
# read script
#
# if [[ script=="zsh" ]]; then
# 	exec which zsh
# else
# 	exec which bash
# fi

PACKAGE="neofetch"

if apt list --installed | grep -qw "$PACKAGE"; then
	echo "$PACKAGE is installed."
else
	# echo "$PACKAGE is not installed."
	exec sudo apt install -y $PACKAGE
	# echo "$PACKAGE installed"
fi
