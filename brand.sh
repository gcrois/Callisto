#!/bin/bash

FH=2570
BRAND="Calisto"
TOT=$(($FH+${#BRAND}))
RED='\033[0;31m'
NC='\033[0m'
cd ascii
for I in $(ls)
do
	SIZE=$(wc -c < $I)
	BEG=$(head -c $FH $I)
	LEFT=$(($SIZE-$TOT))
	S_LEFT=$(tail -c $LEFT $I)
	echo > $I
	echo -n "$BEG " >> $I
	echo -en  "$RED$BRAND$NC " >> $I
	echo "$S_LEFT" >> $I
done
