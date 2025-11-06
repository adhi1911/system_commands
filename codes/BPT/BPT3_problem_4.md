# BPT 3 - Problem 4

## Problem Statement

Write a `script.sh` that takes one argument: a directory path.
The script should use the `find` command to search for all empty files in the specified directory and its subdirectories recursively, and then delete these files.
The script should print the names of the deleted files.

## Instructions

- Write your script in `./script.sh`.
- The path to the directory will be provided to your script via first command line argument `$1`.
- The script should output to the standard output (`&1`).
- The empty files should also be deleted from the filesystem.

## Sample Input Filesystem Hierarchy

```bash
> tree /path/to/directory
/path/to/directory
|-- file1.txt (empty)
|-- file2.txt (non-empty)
|-- subdir
    |-- file3.txt (empty)
    |-- file4.txt (non-empty)
```

## Sample Output

```
/path/to/directory/file1.txt
/path/to/directory/subdir/file3.txt
```

## Sample post-execution side-effect

```bash
> tree /path/to/directory
/path/to/directory
|-- file2.txt
|-- subdir
    |-- file4.txt
```


# Solution
```bash
dir="$1"
dir="${dir%$'\r'}"

find "$dir" -type f -empty -print -delete | sort
```