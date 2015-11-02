#!/bin/bash

while :
do
  temperature="$(vcgencmd measure_temp | cut -d '=' -f 2 | tr -d "'C")"
  measurement-create -e $BOUNDARY_EMAIL -t $BOUNDARY_API_TOKEN -n "PI_TEMPERATURE" -m "$temperature"
  sleep 1
done
