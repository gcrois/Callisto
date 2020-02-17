#!/bin/bash

SLEEP=0.05
if [ $# -eq 1 ]; then
SLEEP=$1
fi

while :
do
for f in $(ls ascii/)
do
  echo -ne "\033[0;0f"
  cat ascii/$f
  sleep $SLEEP
done
done
