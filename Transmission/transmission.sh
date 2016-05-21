#!/usr/bin/env bash
[[ "${USERID:-""}" =~ ^[0-9]+$ ]] && usermod -u $USERID -o debian-transmission
[[ "${GROUPID:-""}" =~ ^[0-9]+$ ]] && groupmod -g $GROUPID -o debian-transmission

exec su -l debian-transmission -s /bin/bash -c "exec transmission-daemon \
            --config-dir /transmission/info --encryption-preferred \
            --dht --foreground --log-error -e /dev/stdout --no-portmap \
            --download-dir /transmission/downloads --incomplete-dir /transmission/downloads"
