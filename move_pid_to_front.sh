#!/bin/bash

# Ask ChatGPT
# make a bash script that takes a filename of a CSV file
# and a number of columns and moves the second-to-last column
# to the beginning of the line, keeping the other columns in order. 

# Usage:
# move_pid_to_front Filename num-columns

move_pid_to_front() {
    local filename="$1"  # CSV file name
    local total_columns="$2"  # Total number of columns
    
    if [ ! -f "$filename" ]; then
        echo "File not found: $filename"
        exit 1
    fi

    awk -v total="$total_columns" 'BEGIN{FS=OFS="\t"} {
        temp = $(total-1)
        for (i = total-1; i > 1; i--) {
            $(i) = $(i-1)
        }
        $1 = temp
        print $0
    }' "$filename" > temp_file && mv temp_file "$filename"

    echo "Second-to-last column moved to the front in $filename"
}

# Check if correct number of arguments provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <filename> <total_columns>"
    exit 1
fi

move_pid_to_front "$1" "$2"
