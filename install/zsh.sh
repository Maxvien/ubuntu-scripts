#!/bin/bash

# Source: https://ohmyz.sh

setup() {
  echo "SETUP: Done"
}

install() {
  sudo apt update
  sudo apt install zsh
  sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

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
