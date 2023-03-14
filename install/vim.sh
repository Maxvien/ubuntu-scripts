#!/bin/bash

# Source: https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu

setup() {
  sudo add-apt-repository ppa:neovim-ppa/stable
  
  echo "SETUP: Done"
}

install() {
  sudo apt-get update
  sudo apt-get install neovim

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

