#!/bin/bash

# Source: https://www.microsoftedgeinsider.com/vi-vn/download?platform=linux-deb

setup() {
	sudo apt-get install wget gpg
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
	sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge.list'
	sudo rm microsoft.gpg

	echo "SETUP: Done"
}

install() {
	sudo apt update
	sudo apt install microsoft-edge-stable

	echo "INSTALL: Done"
}

type=$1

case ${type##*( )} in
	setup)
		setup;
	;;

	install)
		install;
	;;

	*)
		setup;
		install;
	;;
esac
