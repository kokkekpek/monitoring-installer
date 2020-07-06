#!/bin/bash

# GIT
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git -y

# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
wget -qO - https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 -y
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose -y
sudo usermod -aG docker $USER

# Clone repository
git clone https://github.com/kokkekpek/monitoring.git

# Copy configs
cp sed.json monitoring
cp htpasswd monitoring/config/.htpasswd

# Install and up
cd monitoring || return
docker run -it --rm --name script -v "$PWD":/usr/src/app -w /usr/src/app node:14.5-alpine node install
docker-compose up -d