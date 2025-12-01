# OPPE Problem 1

## Problem Statement

A data scientist wishes to train image classification models based on 5 different datasets. These are named from `DatasetA` to `DatasetE`. There are three categories of image files within each dataset, namely `train`, `test` and `validation`. Before downloading the images, the directory structure needs to be created.

Write a bash script to create the directories for the datasets. Within each dataset directory, create subdirectories for `train`, `test`, and `validation`. In each subdirectory, create two empty files named `metadata.yml` and `README.md`.

The directory structure should be the following after running the script.

```bash
.
├── DatasetA
│   ├── test
│   │   ├── README.md
│   │   └── metadata.yml
│   ├── train
│   │   ├── README.md
│   │   └── metadata.yml
│   └── validation
│       ├── README.md
│       └── metadata.yml
├── DatasetB
│   ├── test
│   │   ├── README.md
│   │   └── metadata.yml
│   ├── train
│   │   ├── README.md
│   │   └── metadata.yml
│   └── validation
│       ├── README.md
│       └── metadata.yml
├── DatasetC
| # ...
```

## Instructions

- Your script should be named `datasets.sh`.
- It should be present in `~/se2001/nppe_1/`.
- It should create the files `metadata.yml` and `README.md` as described in the problem statement.
- The files should be empty.
- It should not output anything to the console.
- If you want to print something for debugging purposes, write to a file or to the standard error stream.


## Solution
Here is a bash script named `datasets.sh` that creates the required directory structure and files:

```bash
#!/bin/bash

mkdir -p Dataset{A..E}/{train,test,validation}
touch Dataset{A..E}/{train,test,validation}/{metadata.yml,README.md}
```