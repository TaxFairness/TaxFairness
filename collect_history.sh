#! /bin/sh

# Ask ChatGPT:

# I have several CSV files that have data in five columns. 
# The sixth column is a date stamp. I want to combine those files, 
# removing duplicate lines, while ignoring the date stamp in the 
# sixth column. Give me three strategies for doing this automatically
# ... and ...
# I like the approach with Unix command line and awk, 
# but I want to preserve the final sixth column. 
# If two lines are identical (in the first five columns), 
# I would like to preserve the oldest data stamp in the sixth column
# ... and ...
# I want to do remove duplicates on all the columns except the last,
# which is the date stamp. I will pass a parameter to the script that 
# has the total number of columns in the file.

#!/bin/bash

remove_duplicates_with_marker() {
    local file_pattern="$1"  # File name pattern
    local total_columns="$2"  # Total number of columns
    
    output_filename="combined_$file_pattern.csv"

    find DefinitiveData -name "$file_pattern.tsv" -exec awk -v total="$total_columns" 'BEGIN{FS=OFS="\t"} {
        key = ""
        for (i = 1; i <= total; i++) {
            if (i != total) {
                key = key $i FS
            } else {
                key = key $i
            }
        }
        if (seen[key]++) {
            print $0 " ***"
        } else {
            print $0
        }
    }' {} + \
    | sort -t$'\t' -k1,$(($total_columns - 1)) -k$total_columns,$total_columns \
    | awk -v total="$total_columns" 'BEGIN{FS=OFS="\t"} {if ($NF == " ***") seen[substr($0, 1, length($0)-4)]++} 1' \
    | sort -t$'\t' -k1,$(($total_columns - 1)) -k$total_columns,$total_columns \
    > "$output_filename"
}

# Call the function with arguments: file pattern and total columns
remove_duplicates_with_marker "AssmtHistory" 6
