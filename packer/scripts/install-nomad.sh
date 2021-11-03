#!/usr/bin/env bash
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

version=1.1.6+ent

apt install nomad-enterprise=${version}

curl -sSL -v https://releases.hashicorp.com/nomad/1.2.0-beta1+ent/nomad_1.2.0-beta1+ent_linux_amd64.zip > /home/vagrant/nomad.zip

sudo apt install unzip
ls -al /home/vagrant/nomad.zip >> /home/vagrant/vagrant.log

unzip nomad.zip
ls -al /home/vagrant/nomad.zip >> /home/vagrant/vagrant.log

chmod +x nomad

sudo cp -f nomad /usr/bin/.
ls -al /usr/bin/nomad >> /home/vagrant/vagrant.log

cat /home/vagrant/vagrant.log

nomad -autocomplete-install