'''
Convert an Excel file to a CSV
Thanks, ChatGPT!

In this code, we first load the Excel workbook using the pd.ExcelFile() method.
We then create an empty DataFrame to store the concatenated data,
and iterate over each sheet in the workbook using the sheet_names attribute
of the ExcelFile object.

For each sheet, we use the parse() method to read its data into a DataFrame
and concatenate it into the main DataFrame using the pd.concat() function.
Finally, we write the concatenated data to a CSV file using the to_csv() method.

Note that you'll need to have the pandas library installed in your
Python environment to run this code.
NO:You can install it using pip install pandas.
Actually, use PyCharm Preferences to install these packages:
- pandas
- openpyxl
Reads from "Raw Data/... MS-1..."
Writes to a file in this directory "MS-1_Summary.csv"
'''

import pandas as pd

def main():
    # Load Excel workbook
    xls_file = pd.ExcelFile('Raw Data/Lyme_MS-1_2013_to_2022-4May2023.xlsx')
    
    # Create an empty DataFrame to store the concatenated data
    df = pd.DataFrame()

    # Iterate over each sheet in the workbook and concatenate its data into the DataFrame
    for sheet_name in xls_file.sheet_names:
        sheet_data = xls_file.parse(sheet_name)
        df = pd.concat([df, sheet_data])

    # Write the concatenated data to a CSV file
    df.to_csv('MS-1_Summary.csv', index=False)

if __name__ == '__main__':
    main()