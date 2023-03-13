#!/bin/bash

# Source: https://volta.sh/

setup() {
	sudo apt-get install curl
  curl https://get.volta.sh | bash

	echo "SETUP: Done"
}

install() {
	volta install node

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
