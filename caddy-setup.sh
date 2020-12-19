#!/bin/bash

wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/main/docker-compose.yml

wget https://github.com/ColoradoStark/caddy-ssl-multisite/raw/main/websites.tar

tar -xvf websites.tar

rm websites.tar

docker-compose up

