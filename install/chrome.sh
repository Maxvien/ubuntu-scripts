#!/bin/bash

# Source: https://ohmyz.sh

setup() {
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
  echo "deb http://dl.google.com/linux/chrome/deb stable main" > /etc/apt/sources.list.d/google.list

  echo "SETUP: Done"
}

install() {
  sudo apt-get update
  sudo apt-get install -y google-chrome-stable

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
