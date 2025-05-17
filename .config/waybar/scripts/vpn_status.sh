#!/bin/bash

if [ -d /proc/sys/net/ipv4/conf/tun0 ]; then
    echo '{"text": "ProtonVPN ", "class": "connected"}'
else
    echo '{"text": "ProtonVPN ", "class": "disconnected"}'
fi

