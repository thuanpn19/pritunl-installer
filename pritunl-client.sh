#!/bin/bash

UBUNTU_CODENAME=$(lsb_release -cs)
REPO_PROTOCOL=$( [ $UBUNTU_CODENAME = "focal" ] && echo "http" || echo "https" )
PRITUNL_REPO="$REPO_PROTOCOL://repo.pritunl.com/stable/apt"

# Add Pritunl repository
echo "deb $PRITUNL_REPO $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/pritunl.list
sudo apt --assume-yes install gnupg
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 7568D9BB55FF9E5287D586017AE645C0CF8E292A
gpg --armor --export 7568D9BB55FF9E5287D586017AE645C0CF8E292A | sudo tee /etc/apt/trusted.gpg.d/pritunl.asc

# Install Pritunl Client
sudo apt update -y
sudo apt install pritunl-client -y