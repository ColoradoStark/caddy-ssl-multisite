# caddy-ssl-multisite

A simple example of a caddy web server running multiple sites over ssl running in a docker container. This repo is the source used to build the docker container coloradostark/caddy-ssl-multisite.

![Screenshot](https://github.com/ColoradoStark/caddy-ssl-multisite/raw/main/caddy.jpg)

## Instructions

First change the working directory of your server to the directory that you want to sync to the caddy server's web directory (i.e. /home/user/somedirectory). From that directory enter the following command:

`docker container run --name caddy-multisite-server -d -p 80:80 -p 443:443 -v $(pwd):/var/www coloradostark/caddy-ssl-multisite sh`

When the command finishes executing you should have a caddy server running

It will sync the path of the public HTML sites to a path on the host machine,
so that you can upload your sites using FTP, SFTP, Bamboo, Jenkins or whatever method you prefer. Without needing to access the container directly.

Caddy is an open source web server with automatic HTTPS written in Go. It will automatically get Let's Encrypt free SSL certificates, and automatically update them for you.

NOTE: If you plan to add a large number of domains, be mindful that Let's Encrypt has rate limits. For more info on Let's encrypt rate limits see the following:

https://letsencrypt.org/docs/rate-limits/
