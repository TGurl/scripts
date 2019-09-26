#!/bin/bash
#
# This script does a basic install of X.org on an plain Arch install
#

set -e -u
umask 022

function banner() {
	tput setaf 5
	echo "##########################################################"
	echo "# "$1
	echo "##########################################################"
	tput sgr0
}

banner "Installing Firefox"
yes | sudo pacman -S --needed firefox
yes | sudo pacman -S --needed chrome-gnome-shell

banner "Installing discord"
yes | sudo pacman -S --needed discord

#banner "Installing "
