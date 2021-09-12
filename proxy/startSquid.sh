#!/bin/bash
# Start Squid container

function STOP_HAPROXY {
	podman kill $(sudo podman ps -a | grep squid | awk '{print $1}') 2> /dev/null
	podman rm -f $(sudo podman ps -a | grep squid | awk '{print $1}') 2> /dev/null
	podman rm --storage squid 2> /dev/null
	
}

function START_HAPROXY {
	podman run --detach \
	      	--net host \
	      	--security-opt label=disable \
	      	--name squid localhost/kevydotvinu/squid
}

STOP_HAPROXY
START_HAPROXY