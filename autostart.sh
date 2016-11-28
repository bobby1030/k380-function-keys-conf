#!/usr/bin/env bash

line=`dmesg | grep -i k380 | grep hidraw`
[[ $line =~ (.*)(hidraw+[^:])(.*) ]]
device=${BASH_REMATCH[2]}
/usr/local/bin/k380_conf -d /dev/${device} -f on