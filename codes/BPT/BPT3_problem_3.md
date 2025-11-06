# BPT 3 - Problem 3

## Problem Statement

Write a `script.sh` that reads a number from the user and calculates the **sum of its digits**.

## Instructions

- The number is provided through sample input (`&0`).
- The script should output the sum of digits to stdout (`&1`).

## Sample Input

```
12345
```

## Sample Output

```
15
```

## Hint

- Commands such as `bc` and `paste` might be useful to solve this question in one line without loops.

# Solution
 ## using loop

```bash
read num

sum=0
for (( i=0; t<${#num}; i++)); do
        digit=${num:$i:1}
        sum=$((sum+digit))
done

echo $sum
```

## using paste and bc 
```bash 
read num
echo "$num" | grep -o . | paste -sd+ - | bc
```
- `grep -o .` → split into digits line-by-line  
  - 1
  - 2
  - 3
  - 4
- `paste -sd+` → join using +
  - 1+2+3+4
- `bc` → evaluate sum
  - 10