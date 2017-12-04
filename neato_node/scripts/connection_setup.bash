#!/bin/bash

# in the onboard computer:
# /etc/init.d/ser2net restart

# in the client computer (the one running the driver):
# botler local IP: 192.168.0.8
botler_ip=192.168.0.8
botler_port=3333
socat pty,link=$HOME/neatobot,waitslave,ignoreeof tcp:$botler_ip:$botler_port,forever,reuseaddr,keepalive
