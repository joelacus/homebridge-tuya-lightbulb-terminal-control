#!/bin/bash
#change the led brightness of a tuya smart light.

#input variable
brightness=$1

#input limitations
if [ "$1" -gt "100" ]; then
	brightness=100
elif [ "$1" -lt "1" ]; then
	brightness=1
fi

#set brightness
curl -X PUT --header "Content-Type:Application/json" --header "authorization: XXX-XX-XXX" http://192.168.X.X:51826/characteristics --data '{"characteristics":[{"aid":2,"iid":13,"value":'$brightness',"status":0}]}' &> /dev/null

echo ">> Light Brightness: $brightness%"
