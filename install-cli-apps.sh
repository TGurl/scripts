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


