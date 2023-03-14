#!/bin/bash

setup() {
  echo "SETUP: Done"
}

install() {
  sudo apt-get update
  sudo apt-get install -y p7zip-rar ibus-unikey vlc ttf-mscorefonts-installer

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
