#!/bin/bash

SLEEP=0.05

while :
do
for f in $(ls ascii/)
do
  echo -ne "\033[0;0f"
  cat ascii/$f
  sleep $SLEEP
done
done
