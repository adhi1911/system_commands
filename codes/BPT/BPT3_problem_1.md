# BPT 3 - Problem 1

## Problem Statement

Write a `script.sh` that reads a CSV file `student_data.csv` present in the current working directory containing student information with columns `StudentID,Name,Age,Grade`. The script should check if the `StudentID` field is **numeric** for each row. Print a lists of each row with an `invalid StudentID` error message along with the corresponding row number.

Please refer to the following sample input and output for reference.

## Instructions

- Write your script in `./script.sh`.
- The input to the script should be taken from the file `./student_data.csv`.
- No input will be provided via stdin (`&0`).
- Output should be printed to stdout (`&1`).

## Sample Input

```csv
StudentID,Name,Age,Grade
101,John Doe,20,A
abc123,Jane Smith,22,B
104,Mike Brown,23,C
105,,19,D
```

## Sample Output

```
Row 2: Invalid StudentID
```

## Hint

- Using `tail -n +2 student_data.csv` will allow you to access the file without the header of the file.

# Solution 

```bash
row=1

tail -n +2 student_data.csv | while IFS=',' read -r StudentID Name Age Grade
do
    if [ $row -ne 1 ]; then
        if ! [[ "$StudentID" =~ ^[0-9]+$ ]]; then
            echo "Row $row: Invalid StudentID"
        fi
    fi
    row=$((row + 1))
done
```
