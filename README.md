# DNSMASQ running in a Container

The porpuse of this project it's to have a running DNSMASQ in a container to simplify DNS redirections.

This container is expected to be executed as follow:

Running docker command:

```bash
docker run --name dnsmasq -d -p 53:53 -p 53:53/udp -e dnsmasqParameters="--address=/#/192.168.2.1 --log-queries=extra --log-dhcp --log-debug" welasco/dnsmasq
```

The dnsmasqParameters variable will append all possible parameters at the initialization of the DNSMASQ.

Check the official doc for reference:

* https://thekelleys.org.uk/dnsmasq/docs/dnsmasq-man.html
* https://thekelleys.org.uk/dnsmasq/CHANGELOG

***Note:*** to avoind IPV6 response use --filter-AAAA parameter, keep in mind it was introduced in dnsmasq 2.87.