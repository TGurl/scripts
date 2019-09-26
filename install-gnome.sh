#!/bin/bash
#
# This script does a basic install of X.org on an plain Arch install
#

set -e -u
umask 022

# load general desktop stuff
source general-desktop.sh

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

install_defaults

if [ $shell -eq 1 ]; then
	banner "Installing gnome-shell"
	yes | sudo pacman -S --needed gnome-shell
	if [ $extra -eq 1 ]; then
		banner "Installing gnome-extra"
		yes | sudo pacman -S --needed gnome-extra
	else
		banner "installing indivual apps"
		yes | sudo pacman -S --needed gnome-control-center
		yes | sudo pacman -S --needed gnome-terminal
		yes | sudo pacman -S --needed gnome-tweaks
	fi
else
	banner "Installing full gnome"
	yes | sudo pacman -S --needed gnome
fi

