#!/bin/sh
PIDFILE="/usr/local/springapp/servers/eureka/eureka.pid"
LOGFILE="/usr/local/springapp/servers/logs/eureka_out.log"


if [ -f "$PIDFILE" ] && kill -0 $(cat "$PIDFILE"); then
echo "eureka  is running"
exit 1
fi

nohup java -jar /usr/local/springapp/servers/eureka/mybank-server-eureka-1.0.jar --spring.profiles.active=slaver1 > $LOGFILE 2>&1 &echo $! > $PIDFILE

echo "eureka start..."
