#!/bin/bash
#
# This script does a basic install of X.org on an plain Arch install
#

set -e -u
umask 022

# set extra to 1 if you want to install gnome-extra
vbox=1
yes="Y"

function banner() {
	tput setaf 5
	echo "##########################################################"
	echo "# "$1
	echo "##########################################################"
	tput sgr0
}


banner "Installing xorg"
sudo pacman -S --needed xorg xorg-xinit
banner "Installing lightdm"
sudo pacman -S --needed lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
banner "Installing fonts"
sudo pacman -S --needed ttf-bitstream-vera ttf-dejavu ttf-droid ttf-hack ttf-inconsolata \
	ttf-ubuntu-font-family cantarell-fonts noto-fonts
banner "Installing themes"
sudo pacman -S --needed arc-gtk-theme papirus-icon-theme gtk-engine-murrine

# Install virtualbox guest utils and drivers
if [ $vbox -eq 1 ]; then
	banner "Installing Virtualbox stuff"
	sudo pacman -S --needed linux-headers virtualbox-guest-utils virtualbox-guest-dkms dkms
fi
