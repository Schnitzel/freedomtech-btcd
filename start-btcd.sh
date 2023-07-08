#!/bin/sh

set -e

if [[ ! -f /data/rpc.cert ]]; then
    gencerts --host=btcd --directory=/data/ --org=freedomtech.hosting
fi

ep /etc/btcd.conf

exec btcd --configfile=/etc/btcd.conf