# OPPE Problem 3

## Problem Statement

Write a bash script `grades.sh` that reads a CSV file `results.csv` present in the current working directory containing student results with columns `RollNo,Name,Marks`. Compute the grade of a student using the following rules:

- If `Marks` is less than 50, grade is `U`.
- If `Marks` is greater than or equal to 50, but less than 60, grade is `D`.
- If `Marks` is greater than or equal to 60, but less than 70, grade is `C`.
- If `Marks` is greater than or equal to 70, but less than 80, grade is `B`.
- If `Marks` is greater than or equal to 80, but less than 90, grade is `A`.
- If `Marks` is greater than or equal to 90, grade is `S`.

Print the names of students along with their grades.

## Sample Input

```
RollNo,Name,Marks
101,Clarence,63
102,Naveen,72
103,Rahul,97
104,Sameer,81
```

## Sample Output

```
Clarence: C
Naveen: B
Rahul: S
Sameer: A
```

## Instructions

- Assume that the `results.csv` is present in the current working directory.
- Write your script in `grades.sh`.
- It should be present in `~/se2001/nppe_3/` directory.
- The script should output the result to the standard output (`&1`).




## Solution 

```bash
tail -n +2 results.csv | while IFS= read -r line;
do
        name=$(echo $line | cut -d',' -f2)
        marks=$(echo $line | cut -d',' -f3)

        case $marks in
                [5][0-9]) grade='D' ;;
                [6][0-9]) grade='C' ;;
                [7][0-9]) grade='B' ;;
                [8][0-9]) grade='A' ;;
                [9][0-9]|100) grade='S' ;;
                *) grade='F' ;;
        esac

        echo ${name}: $grade

done
```