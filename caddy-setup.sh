#!/bin/bash

mkdir caddy

cd caddy

wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/main/docker-compose.yml

wget https://github.com/ColoradoStark/caddy-ssl-multisite/raw/master/websites.tar

wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/master/db-variables.env

wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/master/wp-variables.env

tar -xvf websites.tar

rm websites.tar

docker-compose up

