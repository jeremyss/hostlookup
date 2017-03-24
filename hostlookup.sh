#!/usr/bin/env bash

# This script will take a single host/IP or multiple hosts/IPs and run the host command against them

# check if arguments are on the command line
if [ $# -le 0 ]; then
	echo "Enter one or more hosts to lookup"
	exit 1
fi

#if a file name is passed in the command line use that, else use individual hosts
if [ -e $1 ]; then
    for i in `cat $1`; do
        host ${i}
	echo
    done
else
    for i; do
        host ${i}
	echo
    done
fi
exit 1