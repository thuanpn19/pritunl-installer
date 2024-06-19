#!/bin/bash

PRITUNL_VERSION="1.30.3431.73"
UBUNTU_CODENAME=$(lsb_release -cs)
ARCHITECTURE="amd64"
PYTHON_VERSION=$( [ $UBUNTU_CODENAME = "focal" ] && echo "python3.8" || echo "python3.10" )
INSTALLATION_DIRECTORY="/usr/lib/pritunl/lib/$PYTHON_VERSION/site-packages/pritunl"
HANDLERS_SUBSCRIPTION="https://raw.githubusercontent.com/ongtungduong/pritunl-installer/main/handlers-subscription.py"
SUBSCRIPTION="https://raw.githubusercontent.com/ongtungduong/pritunl-installer/main/subscription.py"

sudo wget https://github.com/pritunl/pritunl/releases/download/${PRITUNL_VERSION}/pritunl_${PRITUNL_VERSION}-0ubuntu1.${UBUNTU_CODENAME}_${ARCHITECTURE}.deb
sudo dpkg -i pritunl_${PRITUNL_VERSION}-0ubuntu1.${UBUNTU_CODENAME}_${ARCHITECTURE}.deb

sudo rm pritunl_${PRITUNL_VERSION}-0ubuntu1.${UBUNTU_CODENAME}_${ARCHITECTURE}.deb

curl ${HANDLERS_SUBSCRIPTION} | sudo tee ${INSTALLATION_DIRECTORY}/handlers/subscription.py > /dev/null
curl ${SUBSCRIPTION} | sudo tee ${INSTALLATION_DIRECTORY}/subscription.py > /dev/null

sudo systemctl restart pritunl