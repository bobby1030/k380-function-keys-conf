#!/usr/bin/env bash

HIDRAW_DIR='/sys/class/hidraw/'
HIDRAW_LIST=$(find $HIDRAW_DIR | tail -n +2 | sed 's/$/\/device\/uevent/')
BIN='/usr/local/bin/k380_conf'

for DEVICE in $HIDRAW_LIST
do
    if grep -q "HID_NAME=Keyboard K380" $DEVICE
    then
        $BIN -d /dev/$(echo $DEVICE | grep -P 'hidraw\d' -o) -f on
    fi
done