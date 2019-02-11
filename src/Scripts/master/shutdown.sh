#!/bin/sh

PIDFILE="/usr/local/springapp/servers/eureka/eureka.pid"

if [ ! -f "$PIDFILE" ] || ! kill -0 "$(cat "$PIDFILE")"; then

echo "eureka not running..."

else

echo "stopping eureka..."

PID="$(cat "$PIDFILE")"

kill -9 $PID

rm "$PIDFILE"

echo "....eureka stopped"

fi
