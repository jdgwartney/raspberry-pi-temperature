#!/bin/bash

metric=
source=

while :
do
  temperature="$(vcgencmd measure_temp | cut -d '=' -f 2 | tr -d "'C")"
  echo "$temperature"
  sleep 1
done
