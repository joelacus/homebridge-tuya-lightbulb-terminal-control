#!/bin/bash
curl -X PUT --header "Content-Type:Application/json" --header "authorization: XXX-XX-XXX" http://192.168.X.X:51826/characteristics --data '{"characteristics":[{"aid":2,"iid":10,"value":false,"status":0}]}' &> /dev/null
echo ">> Light OFF"
