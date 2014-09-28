#!/bin/sh
top -e -l 1 | grep "PhysMem:" | sed -e 's/PhysMem: //' -e 's/M//' | awk '{ convert_g=substr($1/1000, 0, 4) }END{ print "メモリ: " sprintf("%sG",convert_g) }'

