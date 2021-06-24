# caddy-ssl-multisite

![Version](https://img.shields.io/github/v/release/ColoradoStark/caddy-ssl-multisite)

A simple example of a caddy web server running multiple sites over ssl running in a docker container. This repo is the source used to build the docker container coloradostark/caddy-ssl-multisite. Caddy is an open source web server with automatic HTTPS written in Go. It will automatically get Let's Encrypt free SSL certificates, and automatically update them for you.  

DEPENDENCIES: Server with docker installed, 2 domains pointed at the server running docker.

![Screenshot](https://github.com/ColoradoStark/caddy-ssl-multisite/raw/master/caddy.jpg)

## Instructions

enter the following command

```wget -qO - https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/main/caddy-setup.sh | bash```
 
you should now have some folders and two .env files in your current directory.
#### IMPORTANT!!! set the passwords in the two .env files. 
#### NOTE: WORDPRESS_DB_PASSWORD and  MYSQL_ROOT_PASSWORD must be the same password.

After the passwords have been set, enter the following command:

```docker-compose up```

That is all you need to do to get the server running. Now you will need to enter the container and edit the config file to match your site names. Type the following command:

```docker container exec -it caddy-multisite-server sh```

```cd /etc/caddy```

```vi Caddyfile```

That will give you access to the config file using the vi editor. https://www.cs.colostate.edu/helpdocs/vi.html Change the name of the websites to your domains. Quit and save. and then type the following:

```caddy reload```

Your sites should now be working over HTTP.  To switch to HTTPS just remove the http:// from the caddy config file, and reload again.  When you do this Caddy will fetch free certs for you and manage HTTPS going forward.  After reloading, it may take a few minutes for everything to be installed and verified by the CA.

Also, You will now have 2 folders in your directory which will sync to the path of /var/www on your caddy server. Because the directories are synced, you can upload your sites using FTP, SFTP, Bamboo, Jenkins or whatever method you prefer. Without needing to ever access the containers directly.  You can add as many sites as you want by creating folders and adding the folder to the config file. 

NOTE: If you plan to add a large number of domains, be mindful that Let's Encrypt has rate limits. For more info on Let's encrypt rate limits see the following:

https://letsencrypt.org/docs/rate-limits/

![Diagram](https://github.com/ColoradoStark/caddy-ssl-multisite/raw/master/diagram.jpg)
