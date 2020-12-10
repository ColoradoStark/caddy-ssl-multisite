FROM caddy:2.2.1

EXPOSE 80 443

RUN mkdir /var/www \
    && apk add wget \
    && apk add git

WORKDIR /var/www

RUN git clone https://github.com/ColoradoStark/caddy-ssl-multisite.git \
    && mv caddy-ssl-multisite/site_1 site_1 \
    && mv caddy-ssl-multisite/site_2 site_2 \
    && mv caddy-ssl-multisite/Caddyfile /etc/caddy/Caddyfile










