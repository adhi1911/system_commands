# BPT 2 - Problem 4

## Problem Statement

You are given a CSV file that contains rows with names and ages of individuals. Write a `grep` command in a script file `script.sh` to remove all rows where the age is not a numeric value.

## Sample Input

```bash
Name,Age
John Doe,30
Jane Smith,twenty-five
Alice Johnson,25
Bob Brown,45
```
## Sample Output

```bash
John Doe,30
Alice Johnson,25
Bob Brown,45
```

## Instructions

- Create the script in a file named `script.sh` in the current working directory.
- The script should read the input from standard input (`&0`).
- The script should not read input from command line arguments.
- The script should output to standard output (`&1`).
- The script should not output anything to the standard error (`&2`).


---

## Solution

```bash
script.sh

grep '[[:digit:]].$' names.csv

```
