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

if apt list --installed 2>/dev/null | grep -qw "$PACKAGE"; then
	echo "$PACKAGE is installed."
else
	echo "$PACKAGE is not installed."
fi
