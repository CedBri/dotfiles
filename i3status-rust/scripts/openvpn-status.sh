#!/bin/bash

if pgrep -x "openvpn" > /dev/null
then
  echo " $(ip a s | grep tun0 | grep inet | cut -d " " -f 6 | cut -d "/" -f 1)"
else
    echo ""
fi
