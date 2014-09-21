#!/bin/sh
# /usr/bin/pmset -g ps | awk '{ if (NR == 2) print "Batteries:" $2 " Status:" $3 " " $4 " " $5; }' | sed "s/;//g"
/usr/bin/pmset -g ps | awk '{ if (NR == 2) print " ♥ :" $2 " (" $3 ") "; }' | sed "s/;//g"
