#!/bin/bash

for I in $(ls rendered/)
do
	png2ascii/png2ascii rendered/$I > ascii/$I.txt
done
