#!/bin/bash

set -e
set -x

echo "Updating git submodules..."
git submodule init
git submodule update
echo "Done."

# TODO: install vagrant plugin

echo "Provisioning CoreOS cluster..."
cd tools/deis
make discovery-url
vagrant up
echo "Done."

echo "Installing the deis.io plattform..."
export DEISCTL_TUNNEL=172.17.8.100
deisctl config platform set sshPrivateKey=${HOME}/.vagrant.d/insecure_private_key
deisctl config platform set domain=local3.deisapp.com
deisctl install platform
deisctl start platform
deisctl list
echo "Done."
