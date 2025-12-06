# read number from stdin and print sum of even numbers and odd numbers seperately upto that number

#!/usr/bin/awk -f

BEGIN {
    getline n

    osum = 0
    esum = 0

    for (i = 1; i <= n; i++) {
        if (i % 2 == 0) {
            esum += i
        } else {
            osum += i
        }
    }

    print esum
    print osum
}