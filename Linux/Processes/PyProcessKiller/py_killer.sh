#!/bin/bash

while true; do
	ps aux | grep python | awk '$3>20.0{print "PID: " $2 " CMD: " $11 " is consuming more than 20% the CPU power: " $3}'
	echo "======================================================================"
	pids=$(ps aux | grep python | awk '$3>50.0{print $2}')
	for pid in $pids; do
		echo "Killing process $pid consuming more than 50% CPU utilization..."
		kill $pid 
	done
	sleep 5
done
