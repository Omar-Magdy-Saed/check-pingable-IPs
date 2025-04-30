#!/bin/bash

subnet="10.127.245"
for i in {1..254}; do
    ip="$subnet.$i"
    if ping -c 1 -W 1 $ip > /dev/null 2>&1; then
        echo "$ip is reachable"
    fi
done
