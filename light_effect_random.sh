#!/bin/bash

seconds=0.1

curl -X PUT --header "Content-Type:Application/json" --header "authorization: XXX-XX-XXX" http://192.168.X.X:51826/characteristics --data '{"characteristics":[{"aid":2,"iid":12,"value":'100',"status":0}]}' &> /dev/null

while true; do
	colour=$(echo $((1 + RANDOM % 360)))
	curl -X PUT --header "Content-Type:Application/json" --header "authorization: XXX-XX-XXX" http://192.168.X.X:51826/characteristics --data '{"characteristics":[{"aid":2,"iid":11,"value":'$colour',"status":0}]}' &> /dev/null
	sleep $seconds
done
