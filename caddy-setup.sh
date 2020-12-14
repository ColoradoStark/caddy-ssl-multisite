#!/bin/bash

docker container run --name caddy-multisite-server -d -p 80:80 -p 443:443 -v $(pwd):/var/www/ws coloradostark/caddy-ssl-multisite

wget https://github.com/ColoradoStark/caddy-ssl-multisite/raw/main/websites.tar

tar -xvf websites.tar

rm websites.tar

