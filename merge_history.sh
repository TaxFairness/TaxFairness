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

# Find all history.tsv files within subdirectories of DefinitiveData/ScrapedData
find DefinitiveData/ScrapedData -type f -name 'AssmtHistory*.tsv' -print0 |
while IFS= read -r -d '' file; do
    # Combine all history.tsv files into a single file
    cat "$file"
done > combined_all_files.tsv

# move the PID to the front of combined_all_files.tsv
sh move_pid_to_front.sh combined_all_files.tsv 6

# Remove "$" and ","
sed -E 's/\$//g' < combined_all_files.tsv \
| sed -E 's/,//g' > no_dollars.tsv

# Sort the combined file based on the first five columns and the date stamp
sort -t$'\t' -k1,5 no_dollars.tsv > sorted_combined.tsv

# Remove duplicates, keeping the oldest date stamp
awk -F$'\t' '!seen[$1,$2,$3,$4,$5]++' sorted_combined.tsv > no_duplicates.tsv

# Move the processed file back to the original directory
# mv no_duplicates.tsv DefinitiveData/ScrapedData/combined_history.tsv

# Clean up temporary files                                                                                                                        
# rm combined_all_files.tsv sorted_combined.tsv


}

# Call the function with arguments: file pattern and total columns
remove_duplicates_with_marker "AssmtHistory" 6
