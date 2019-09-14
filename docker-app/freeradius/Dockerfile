FROM ubuntu:18.04

RUN apt update && apt dist-upgrade -y && \
    apt -y install wget build-essential net-tools tcpdump lsb-base \
    libc6 libgdbm5 libltdl7 libpam0g libperl5.26 libpython2.7 \
    libssl1.0.0 ssl-cert ca-certificates adduser libmhash-dev libtalloc-dev \
    libperl-dev libssl-dev libpam-dev libgdbm-dev git-core checkinstall 

RUN apt install -y freeradius freeradius-postgresql freeradius-ldap

RUN apt clean

COPY config/freeradius /etc/freeradius
RUN chown -R freerad:freerad /etc/freeradius

COPY ./wait-for-it.sh /wait-for-it.sh
RUN chmod +X /wait-for-it.sh

EXPOSE 1812/udp
EXPOSE 1813/udp
EXPOSE 1814/udp
EXPOSE 18120/udp

CMD ["/wait-for-it.sh", "postgresql:5432", "--", "/usr/sbin/freeradius", "-X"]