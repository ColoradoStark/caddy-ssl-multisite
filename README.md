# caddy-ssl-multisite

A simple example of a caddy web server running multiple sites over ssl running in a docker container.

This repo is the source used to build the docker container coloradostark/caddy-ssl-multisite

Caddy is an open source web server with automatic HTTPS written in Go. It will automatically get Let's Encrypt free SSL certificates, and automatically update them for you.

NOTE: If you plan to add a large number of domains, be mindful that Let's Encrypt has rate limits. For more info on Let's encrypt rate limits see the following:

https://letsencrypt.org/docs/rate-limits/
