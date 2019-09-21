FROM ulsmith/alpine-apache-php7

RUN apk update && apk upgrade && \
    apk add --no-cache php7-pear \
    php7-gd php7-openssl \
    bash vim

RUN pear channel-update pear.php.net && \
    pear install --alldeps Mail Mail_Mime DB

RUN rm -f /var/cache/apk/*


COPY ./web/public /app/public
RUN chown -R apache:apache /app && chmod -R 755 /app

