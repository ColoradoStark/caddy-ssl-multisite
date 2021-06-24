#!/bin/bash

# Install Docker CE
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Elevate Permissions for Ubuntu user 
sudo usermod -aG docker ubuntu

# Install Docker Machine
base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

mkdir caddy

cd caddy

wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/main/docker-compose.yml

wget https://github.com/ColoradoStark/caddy-ssl-multisite/raw/master/websites.tar

wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/master/db-variables.env

wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/master/wp-variables.env

tar -xvf websites.tar

rm websites.tar

