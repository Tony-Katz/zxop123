#!/bin/bash

while true; do
    arp -i eth0 -a | awk '{print $2}' | cut -d '(' -f 2 | cut -d ')' -f 1 | grep -v '^\s*$'
    sleep 60
done
