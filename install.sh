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
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo u+x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Clone repository
git clone https://github.com/kokkekpek/monitoring.git

# Copy configs
cp config.json monitoring
cp htpasswd monitoring/config/.htpasswd

# Install and up
docker network create web
cd monitoring && sh ./configurator.sh
docker-compose up -d
