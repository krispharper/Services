#!/usr/bin/env bash

exec su -l debian-transmission -s /bin/bash -c "exec transmission-daemon \
            --config-dir /transmission/info --encryption-preferred \
            --dht --foreground --log-error -e /dev/stdout --no-portmap \
            --download-dir /transmission/downloads --incomplete-dir /transmission/incomplete"
