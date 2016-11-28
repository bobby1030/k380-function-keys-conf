#!/usr/bin/env bash
./build.sh;

FPATH=$(readlink -f ./k380_conf);
chmod +x $FPATH;
ln -s $FPATH /usr/local/bin

