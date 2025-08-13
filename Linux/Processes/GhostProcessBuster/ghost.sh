#!/bin/bash

# Set the time limit
TIME=$(($1 * 60))

# Save the time in seconds 
START=$(date +%s)
CURRENT=$(date +%s)

# Possible names for the process
NAMES=("update" "backup" "phantom")

# Run for specifed time minutes
while [[ $(($CURRENT - $START)) -le $TIME ]]; do
    
    # Gets new name
    NEW_NAME=${NAMES[$RANDOM % ${#NAMES[@]}]}
    BASH_ARGV0="$NEW_NAME" 

    # Consumes CPU for less than 1 minute
    INTERVAL=$(($RANDOM % 60))

    if (( RANDOM % 2 == 0 )); then
        END_TIME=$(($SECONDS + $INTERVAL))

        # Consumes CPU
        echo "Consuming CPU"
        while [ $SECONDS -lt $END_TIME ]; do
            echo $((RANDOM * RANDOM)) > /dev/null
        done
    else
        echo "Not consuming CPU for $INTERVAL seconds..."
        sleep $INTERVAL
    fi 


    CURRENT=$(date +%s)
done

echo "Ghost process ran for $1 minutes..."