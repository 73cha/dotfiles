#!/bin/sh
top -e -l 1 | head | grep "CPU usage:" | sed 's/CPU usage: //' | awk '{ trim_unit=substr($1, 0, 5) }END{ print "CPU: " sprintf("%s%%",trim_unit) }'
