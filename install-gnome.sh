#!/bin/bash
#
# This script does a basic install of X.org on an plain Arch install
#

set -e -u
umask 022

# set extra to 1 if you want to install gnome-extra
extra=0

# set shell to 1 if you only want to install gnome-shell
shell=1

function banner() {
	tput setaf 5
	echo "##########################################################"
	echo "# "$1
	echo "##########################################################"
	tput sgr0
}


if [ $shell -eq 1 ]; then
	banner "Installing gnome-shell"
	sudo pacman -Sy --needed gnome-shell
else
	banner "Installing full gnome"
	sudo pacman -Sy --needed gnome
fi

if [ $extra -eq 1 ]; then
	banner "Installing gnome-extra"
	sudo pacman -Sy --needed gnome-extra
fi