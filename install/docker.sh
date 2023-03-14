#!/bin/bash

# Source: https://ohmyz.sh

setup() {
  

  echo "SETUP: Done"
}

install() {
  sh -c "$(wget https://get.docker.com -O -)"
  apt-get install -y uidmap
  dockerd-rootless-setuptool.sh install

  echo "INSTALL: Done"
}

# Make sure the following environment variables are set (or add them to ~/.bashrc):
# export PATH=/usr/bin:$PATH
# Some applications may require the following environment variable too:
# export DOCKER_HOST=unix:///run/user/1000/docker.sock

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
