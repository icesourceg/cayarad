FROM yobasystems/alpine-mariadb:latest

RUN apk update && apk upgrade && \
    apk add --no-cache tzdata bash && \ 
    rm -f /var/cache/apk/*

RUN cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
RUN echo "Asia/Jakarta" >  /etc/timezone

COPY ./data/*  /docker-entrypoint-initdb.d/