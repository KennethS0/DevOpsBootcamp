# Processes
A process is any program that is being executed at a particular time.

Each process has it's own attributes that help identify them such as:
1. PID
2. State (running, sleep, zombie, etc...)
3. Owner (User)
4. Priority

## View processes
There are several ways to monitor all the processes that are being executed:
* `ps aux`: Shows all the processes along with important information such as CPU consumption.
* `top`: Shows the processes in real time.
* `htop`: Requires a download but it's a better `top` command.

## Kill processes
Sometimes we need to stop processes and there is a way to do so, but we need either the process ID or it's name.

* `kill <pid>`: Tries to kill the process.
* `kill -9 <pid>`: Immediately kills the process.
* `pkill <name>`: Kills every process with a certain name.
* `killall <name>`: Kills every process of the same type.

## Process Priorities
From -20 (Highest priority) to 19 (Lowest)
* Initializes the command with the specified priority: `nice -n <priority> <cmd>` 
* Change the priority of a process: `renice -n 5 -p <pid>`

### Exercises
1. **PyProcessKiller**: Monitors Python processes and checks their consumption, over a certain limit it warns the user and passed another limit, it immediately kills the process.
2. **GhostProcessBuster**: Monitors 