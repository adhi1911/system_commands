# BPT 2 - Problem 3

## Problem Statement

Create a script named `script.sh` in current working directory which checks for the string "database_error" in the `app.log` file.
If the string is found add a timestamped entry to `error_report.log`.
The timestamp should be of the current date and time.
Refer to the **sample output** for the format.

## Sample Input

(present in `app.log` file)

```bash
2024-06-27 12:00:00 INFO Application started
2024-06-27 12:01:00 ERROR Failed to connect to database
2024-06-27 12:02:00 ERROR database_error detected in module X
2024-06-27 12:03:00 INFO Processing request
2024-06-27 12:04:00 ERROR database_error: connection lost

```
## Sample Output

```bash
Fri Jun 28 12:00:00 UTC 2024: Database error found
```

## Hint

- To add the timestamp you need to use the `date` command.

## Instructions

- Create a script named `script.sh` in the current working directory
- It should read the file `app.log` from the filesystem
- The script will not be provided any input via stdin (`&0`) or command line arguments
- The script should not output anything to the standard output (`&1`) or standard error (`&2`)


---

## Solution 

```bash
#script.sh

grep -E 'database_error' app.log && date -u +"%a %b %d %H:%M:%S %Z %Y: Database error found" > error_report.log

```