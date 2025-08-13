#!/bin/bash
counter=1
while [ $counter -le 4 ]; do
	python3 stress.py &
	((counter++))
done
