#!/usr/bin/env bash

printf "Loading Parameters from variable dnsmasqParameters"
printf "Current value of dnsmasqParameters:"
printf "$dnsmasqParameters"

# Reference:
# https://thekelleys.org.uk/dnsmasq/docs/dnsmasq-man.html
# https://thekelleys.org.uk/dnsmasq/CHANGELOG
# Note: to avoind IPV6 use --filter-AAAA, keep in mind it was introduced in dnsmasq 2.87.
# --filter-AAAA --address=/#/192.168.2.1 --log-queries=extra --log-dhcp --log-debug
# Running docker command: docker run --name dnsmasq -d -p 53:53 -p 53:53/udp -e dnsmasqParameters="--address=/#/192.168.2.1 --log-queries=extra --log-dhcp --log-debug" dnsmasq

printf "Starting dnsmasq"
dnsmasq -C /etc/dnsmasq.conf --no-daemon $dnsmasqParameters