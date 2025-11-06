# BPT 2 - Problem 1

## Problem Statement

Write a **bash script** `script.sh` to extract the country name and its capital from a HTML file.
Assume that the HTML Code is of the following format and convert it in to the format as shown in the sample output.

## Sample Input

```html
<li>Country: <span class="country-name">France</span>, Capital: <span class="country-capital">Paris</span></li>
<li>Country: <span class="country-name">Japan</span>, Capital: <span class="country-capital">Tokyo</span></li>
<li>Country: <span class="country-name">Canada</span>, Capital: <span class="country-capital">Ottawa</span></li>
```

## Sample Output

```bash
France
Paris
Japan
Tokyo
Canada
Ottawa
```

## Instructions

- The input will be provided via standard input (`&0`).
- The script should output to standard output (`&1`).
- The script should not output anything to standard error (`&2`).
- The script will not be provided any input via command line arguments.


---

## Solution

```bash
# script.sh
while read -r line; do
    echo "$line" | cut -d'>' -f3 | cut -d'<' -f1
    echo "$line" | cut -d'>' -f5 | cut -d'<' -f1
done
```

- `echo "$line"` : <li>Country: <span class="country-name">France</span>, Capital: <span class="country-capital">Paris</span></li>
- `cut -d'>' -f3` : 1- <li  2- <Country: <span class="country-name"  3- **France</span**
- `cut -d'<' -f1` : 1- **France** 2- </span
  
again 
- `echo "$line"` : <li>Country: <span class="country-name">France</span>, Capital: <span class="country-capital">Paris</span></li>
- `cut -d'>' -f3` : 5- **Paris</span**
- `cut -d'<' -f1` : 1- **Paris** 2- </span
  

