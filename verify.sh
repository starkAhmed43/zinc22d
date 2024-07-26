#!/bin/bash

# Navigate to the directory containing your gzip files
cd ./SMI_GZ/

# Loop through all gzip files in the directory
for file in *.gz
do
    gzip -t "$file"
    if [ $? -eq 0 ]; then
        echo "$file - pass"
    else
        echo "$file - FAIL"
    fi
done
