# BPT 2 - Problem 2

## Problem Statement

Write a shell script `script.sh` that checks if either the `global_config` or `local_config` directories exist in the current working directory, and if either of them they do, create an empty file named `default_config` in current working directory.

## Hint

 - Please use concepts tought in week 3 in redirections and combining commands.
 - Make appropriate use of || or && operators.

## Instructions

- Create the script named `script.sh` in the current working directory.
- The script should not read stdin (`&0`) or write to stdout (`&1`) or stderr (`&2`).
- The script is not passed any command line arguments.

---

## Solution 
```bash
# script.sh

[ -d global_config ] || [ -d local_config ] && touch default_config
```