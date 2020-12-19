FROM caddy:2.2.1

EXPOSE 80 443

RUN mkdir /var/www \
    && chown -R root /var/www \
    && apk add wget 

WORKDIR /var/www

RUN wget https://raw.githubusercontent.com/ColoradoStark/caddy-ssl-multisite/main/Caddyfile \
    && mv Caddyfile /etc/caddy/Caddyfile 












