FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache freeradius freeradius-client freeradius-python \
    freeradius-postgresql freeradius-radclient \
    freeradius-unixodbc freeradius-mysql freeradius-lib \
    freeradius-rest bash  && \ 
    rm -f /var/cache/apk/*

COPY config/raddb /etc/raddb
RUN chown -R root:radius /etc/raddb

COPY ./wait-for-it.sh /wait-for-it.sh
COPY ./start.sh /start.sh

RUN chmod +X /wait-for-it.sh
RUN chmod +x /start.sh

EXPOSE 1812/udp
EXPOSE 1813/udp
EXPOSE 1814/udp

CMD ["/wait-for-it.sh", "cayamariadb:3306", "--timeout=300", "--", "/start.sh"]