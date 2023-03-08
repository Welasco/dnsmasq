FROM ubuntu:latest

WORKDIR /opt/startup/

COPY startup /opt/startup

RUN chmod 755 /opt/startup/init_container.sh \
    && apt-get update \
    && apt-get install -y net-tools dnsutils dnsmasq

EXPOSE 53/udp
EXPOSE 53

ENV PORT 53

ENTRYPOINT ["/opt/startup/init_container.sh"]