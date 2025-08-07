## Process Priorities
## From -20 (Highest priority) to 19 (Lowest)
### Initializes the command with the specified priority
nice -n <priority> <cmd> 

### Change the priority of a process
renice -n 5 -p <pid>
