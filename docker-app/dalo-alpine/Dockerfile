FROM ulsmith/alpine-apache-php7

RUN apk update && apk upgrade && \
    apk add --no-cache php7-pear \
    php7-gd php7-openssl \
    bash vim tzdata

RUN pear channel-update pear.php.net && \
    pear install --alldeps Mail Mail_Mime DB

RUN rm -f /var/cache/apk/*

RUN cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
RUN echo "Asia/Jakarta" >  /etc/timezone

COPY ./web/public /app/public
RUN chown -R apache:apache /app && chmod -R 755 /app

