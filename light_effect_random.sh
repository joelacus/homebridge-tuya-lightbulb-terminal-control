#!/bin/bash

seconds=0.1

curl -X PUT --header "Content-Type:Application/json" --header "authorization: 031-45-157" http://192.168.2.9:51826/characteristics --data '{"characteristics":[{"aid":2,"iid":12,"value":'100',"status":0}]}' &> /dev/null

while true; do
	colour=$(echo $((1 + RANDOM % 360)))
	curl -X PUT --header "Content-Type:Application/json" --header "authorization: 031-45-157" http://192.168.2.9:51826/characteristics --data '{"characteristics":[{"aid":2,"iid":11,"value":'$colour',"status":0}]}' &> /dev/null
	sleep $seconds
done
