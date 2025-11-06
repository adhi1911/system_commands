# BPT 3 - Problem 2

## Problem Statement

Write a `script.sh` that processes a CSV file containing names and ages, and outputs the names of people whose age is a multiple of 5.

## Instructions

- Write your script in `./script.sh`.
- The input to the script is given via stdin (`&0`).
- The script should output to stdout (`&1`).
- The input will contain the csv header.

## Sample Input

```csv
Name,Age
John Doe,30
Jane Smith,22
Alice Johnson,25
Bob Brown,45
```

## Sample Input

```
John Doe
Alice Johnson
Bob Brown
```

## Hint

- This question can be done solely using `grep` in one line without any looping.

# Solution 
## usning looping 

```bash
row=0

while IFS=',' read -r Name Age; do
    if [ $row -eq 0 ]; then
        row=1
        continue  
    fi


    if (( Age % 5 == 0 )); then
        echo "$Name"
    fi

done
```

## using grep
```bash
grep -E ',[0-9]*[05]$' | cut -d',' -f1
``` 

| Command                  | Explanation                                      |
|--------------------------|--------------------------------------------------|
| `grep -E`               | Use extended regex                               |
| `,[0-9]*[05]$`          | Age ends with 0 or 5 → multiple of 5             |
| `cut -d',' -f1`         | Extract the first column (Name)                  |
