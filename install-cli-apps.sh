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

banner "Installing archives"
yes | sudo pacman -S --needed p7zip unzip unrar zip unzip
banner "Installing vim"
yes | sudo pacman -S --needed vim
banner "Installing Midnight Commander and ranger"
yes | sudo pacman -S --needed mc ranger
