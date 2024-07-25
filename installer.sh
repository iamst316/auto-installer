#!/usr/bin/bash

echo "Hello World!"

PACKAGE="neofetch"

if apt list --installed | grep -qw "$PACKAGE"; then
	echo "$PACKAGE is installed."
else
	# echo "$PACKAGE is not installed."
	exec sudo apt install -y $PACKAGE
	# echo "$PACKAGE installed"
fi

# a custom shell will be installed now

# echo "Do You Want to Install a custom shell? [y/n]"

validity = false

while [ "$validity" = false ]; do
	echo "Enter your choice (y/n): "
	read choice

	case "$choice" in
	y | Y)
		validity=true
		echo "You entered 'yes'."
		;;
	n | N)
		validity=true
		echo "You entered 'no'."
		;;
	*)
		echo "Invalid input. Please enter 'y/Y' or 'n/N'."
		;;
	esac
done
