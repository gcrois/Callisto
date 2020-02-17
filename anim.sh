#!/bin/bash

SLEEP=0.05

while :
do
for f in $(ls ascii/)
do
  cat ascii/$f
  sleep $SLEEP
done
done
