#! /bin/sh

# merge_history.sh - collect all the "history" files from the RawData/ScrapedData
# directory and merge them, removing duplicate lines. (These may have been
# caused by multiple runs of the scrapevgsi.py program at different times 
# in a year.) Retain the earliest line of any set of identical lines (to preserve
# the date of the first change of a value.)
# 
# Usage:
#    cd TaxFairness
#    sh ./merge_history.sh  # Moves merged files into DefinitiveData directory

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

remove_duplicates() {

    pattern="$1"  # TSV file name
    columns="$2"  # Total number of columns

# Find all history.tsv files within subdirectories of DefinitiveData/ScrapedData
find "RawData/ScrapedData" -type f -name "$pattern*.tsv" -print0 |
while IFS= read -r -d '' file; do
    # Combine all history.tsv files into a single file
    cat "$file"
done > TEST_1combined_all_files.tsv

# NO LONGER NECESSARY - I pruned the datasets and manually fixed the files
# Move the PID to the front of combined_all_files.tsv
# ... unless the file is  "Buildings..." file (it already has PID at the front),
# if test "$pattern" == "${pattern#*Buildings}"; then
#     sh move_pid_to_front.sh TEST_1combined_all_files.tsv "$columns"
# fi

# Remove "$" and "," 
sed -E 's/\$//g' < TEST_1combined_all_files.tsv \
| sed -E 's/,//g'  > TEST_2no_dollars.tsv

# remove blank lines
sed -E '/^[[:blank:]]*$/d' < TEST_2no_dollars.tsv > TEST_3no_blanks.tsv

# Sort the combined file based on the first five columns and the date stamp
# sort -t$'\t' -k1,5 no_dollars.tsv > sorted_combined.tsv
sort -t$'\t' -k1,$((columns - 1)) TEST_3no_blanks.tsv > TEST_4sorted_combined.tsv

# sort -t$'\t' filename

# Remove duplicates, keeping the oldest date stamp
awk -F$'\t' '!seen[$1,$2,$3,$4,$5]++' TEST_4sorted_combined.tsv > TEST_5no_duplicates.tsv

# Move the processed file back to the DefinitiveData directory
mv TEST_5no_duplicates.tsv DefinitiveData/Merged"$pattern".tsv

# Clean up temporary files                                                                                                                        
rm TEST_*.tsv

}

# Process all the history files, and move them to the DefinitiveData directory
# Call the function with arguments: file pattern and total columns
remove_duplicates "AssmtHistory" 6
remove_duplicates "ApprlHistory" 6
remove_duplicates "OwnerHistory" 10
remove_duplicates "Buildings" 19

remove_duplicates "SpecialLand" 6
remove_duplicates "Outbuildings" 10
remove_duplicates "ExtraFeature" 8     # no "s" in the filename
