#!/bin/sh
echo -e "$CONFIG" > /etc/Caddyfile
echo Caddyfile is:
echo -------------
cat /etc/Caddyfile
echo -------------
caddy --conf /etc/Caddyfile
