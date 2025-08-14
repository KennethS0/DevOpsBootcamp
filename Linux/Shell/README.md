# Shell Scripting
Allows to automate tasks by using scripting. This directory contains 2 small exercises to get familiar with bash scripting.

## Syntax
#### Variables
```
MY_VAR="MY_VAL"
MY_LIST=("1" "2" "3")
```

#### If statements
```
if condition; then
    <code>
else
    <code>
fi
```

#### While loops
```
while condition; do
    <code>
done
```

#### For loops
```
for var in $DATA; do
    <code>
done
```

#### Conditional statements
There are different conditional statements in shell scripting, we have `[]` which can be used to evaluate conditions, but we also have `[[]]` which is a BASH specific conditional that has more features.

## Exercises
1. Log Report: Shows all the *.log files found and how much space they take. Outputs the data into a log_report.txt file.
2. NinjaScript: Checks for the existence of a file, and appends a message to it or creates the file.