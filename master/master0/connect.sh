#!/bin/bash
# Connects to bootstrap node

function SSH_CONNECT {
ssh -o StrictHostKeyChecking=no -i ${KEY} ${USER}@${IP}
}

source $(dirname $(dirname $(pwd)i))/env
KEY=$(dirname $(dirname $(pwd)))/downloads/id_ed25519
IP=192.168.122.91
USER=core

SSH_CONNECT
