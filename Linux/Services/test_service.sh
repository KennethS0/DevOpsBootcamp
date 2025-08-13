#!/bin/bash

while true; do
	echo "TEST SERVICE: $(date)" >> /var/log/test_service.log
	sleep 5
done
