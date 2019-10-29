#!/bin/sh

[ -e /var/run/avahi-daemon ] && rm -f /var/run/avahi-daemon

/usr/sbin/avahi-daemon
