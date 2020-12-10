FROM caddy

EXPOSE 80 443

RUN mkdir /var/www \
    && apk add wget \
    && apk add git

WORKDIR /var/www

RUN git clone 





