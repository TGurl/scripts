#!/bin/bash
#
# This script does nothing on it's own but needs to be called from one
# of the other scripts

function install_defaults() {
	banner "Installing base desktop stuff"
	yes | sudo pacman -S --needed xdg-user-dirs xdg-user-dirs-gtk
	yes | sudo pacman -S --needed gvfs gvfs-mtp
	yes | sudo pacman -S --needed pulseaudio pulseaudio-alsa pavucontrol
	yes | sudo pacman -S --needed gst-plugins-bad gst-plugins-base \
		gst-plugins-base-libs gst-plugins-good gst-plugins-ugly \
		lib32-gst-plugins-base lib32-gst-plugins-base-libs \
		lib32-gst-plugins-good gstreamer gst-libav
}
