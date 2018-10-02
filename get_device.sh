#!/bin/bash
for ((i = 0; i < 10; i++))
do
  for ((j = 0; j < 30; j++))
  do
    curl -s -X GET http://192.168.X.X:51826/characteristics?id=$i.$j  2>&1 | grep value
  done
  printf "\n"
done
