#!/bin/bash

while true; do
	echo "GREETINGS FROM SYSTEMD: $(date)" >> /var/log/greeter.log
	sleep 5
done
