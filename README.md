# About these files

This repository contains information about properties in Lyme retrieved from various sources.
It contains:

1. A SQLite database (named **Property_In_Lyme.sqlite**) with a variety of data files, imported from...

2. The **DefinitiveData** folder. This contains all the highly-massaged output files that get read into the SQLite database. The import process gets data from the following files:

   - **all sales 19-0401-21-0930 16-tab.csv**
     This lists all (61) sales considered by the Assessor for the 2021 revaluation.
     Table is named **SalesConsidered61**

   - **ASSESSED V. APPRAISED DINA W TTL LAND UNITS 21-1202-no-units.csv**
     Data from Assessor via Dina that gives current (as of 2Dec2021) values for
     appraised & assessed values.
     Table is named **AsVsAPDina**

   - **Land_Use_Codes_from_VGSI.txt**
     Values of "land use codes" scraped from vgsi.com page -
     a two-column tab-delimited file that with four-digit codes plus telegraphic descriptions.
     Table is named **VGSIinLyme**

   - **Lyme Conservation Easements as of 2-13-08.csv**
     Imported data from B. Allison's table of easements up to 2008.
     Table is named **ConservationEasements**

   - **lyme old to new 21-1202-from-xls-cleaned.csv**
     From original Assessor file named _lyme old to new 21-1202.xls_ in a tricky format.
     Exported as text, then cleaned to create this file.
     Table is named **LymeOldToNew211202**

   - **Lyme Zoning Permit 2016-2021.csv**
     Recent "building permits" from 2016 through April 2021.
     Table is named **ZoningPermits**

   - **Old-NewValues2021-21Nov2021.csv**
     Lyme gave a printout of old and new valuations to John Biglow who scanned
     it to produce Old-NewValues.pdf.
     Source data is in _Old-New Values_ folder.
     Table is named **OldVsNew**

   - **Recent\_Sales\_Data\_from\_Rusty-31Oct2021.csv**
     Values for recent sales (from April 2020 to date) collected from the Grafton County
     Register of Deeds collected by R. Keith.
     Table is named **Recentsales**

   - **Sales Not Used-12Jan2022.csv**
     Approximately 80 properties manually entered and checked by R & L Brown
     from photos of the pages from the Assessor Manual by H Quinton.
     This includes properties known not to be arms-length as well as a
     number that likely _are_ arms-length.
     There's no distinction between the two in this table.
     Table is named **SalesNotUsed**

   - **ScrapedData folder** 
     This folder contains folders with 
     groups of five `.tsv` files scraped from VGSI.
     The folder names show the date of the scrape
     Sometimes, we import those file, into a table named **ScrapedData##**

   - **Town-Assessment-from-PDF-16Feb2022.csv**
     This contains the Assessed value by owner.
     Original source data on [town website on 21Oct2021.](
     https://www.lymenh.gov/sites/g/files/vyhlif4636/f/uploads/assessed\_value\_by\_owner\_21-0909_0.pdf)
     Data cleaned up in separate pass on 16Feb2022.
     Table is named **TownAssessment**

   - **Vision Occupancy Codes.csv**
     Vision Occupancy Codes.xlsx - Excel file of four-digit code, description,
     "summary code", and guesses as to type of use.
     Table is named **VisionOccCodes**

   - **002_Lyme Land Use Codes-17Nov2021.csv**
     Received a scanned PDF of Land use codes from assessing@lymenh.gov.
     This is an OCR'd version.
     Table is named **LymeUseCodes**

   - **Sales Records-GraftonCountyRegisterOfDeeds-24Jul2022.xlsx**
     Received 24Jul2022 from R. Keith who produced it from the
     Grafton County Register of Deeds database.
     Merged Book/Page info from _Recent Sales-April2021-Oct2021.csv_
     and verified sale date and price between the two files.
     We need to verify the **Edits to Import** information against
     the PA-34 forms in the Town Office.
     Table is named **FullGCRD**

   - **PA-32-1Aug2022.csv**
     R. Brown and J. Williams went to Town Office to review the PA-34 forms
     between 1 Apr 2019 and 1 Oct 2021. This is data received from them.
     Table is named **PA342022**

   - **Equalization Tables-29Apr2022.csv**
     Data about recent sales, purporting to show proper equalization (I imagine)
     Not sure of the provenence of this data.
     Book-Page split into new columns on 1 Aug 2022.
     Table is named **Equalization2022**

   - **GCRoD-All-cleaned.txt**
     All records from Grafton County Register of Deeds.
     Scraped by `scrapingAVA.py` program.
     Table is named **GraftonCtyRoD**

3. Assorted "raw data" files that hav been processed to produce
   the files in the **DefinitiveData** folder

## Convert from PDF to Excel

* https://www.ilovepdf.com/ works on Town Budget

* Rich used [https://onlineocr.net](https://onlineocr.net) to convert it to a
     text file that could be imported into a spreadsheet. 
* PDF OCR X Enterprise Edition and a bunch of regexes to produce
     the Town Assessment-from PDF-12Oct2021.xlsx spreadsheet.


## Why use a database?

The files here all get loaded into a SQLite database.
(Don't worry - it's not scary.)
Doing this has two major advantages:

1. It's easy to load the database _repeatably_ from the raw data files.
   In fact the `create_database.sh` file discussed below automatically pulls
   in all the files above into separate tables of a single database,
   so these can be combined and compared automatically.
   If we revise the raw data, we can simply re-import and
   then all the reports work exactly the same.

2. It's easy to re-run reports (again, _repeatably_).
   If we get new data, we can run the queries/reports and know
   that we're not skipping some important step.

F'rinstance... With Excel, it's a pain in the patootie to match up columns
from different spreadsheets so the Map/Lot/Unit columns are the same.
This is exactly what databases are designed to do:
_Show me columns A, B, and C from this file and columns X, Y, and Z
from the other file where the Map/Lot/Unit are the same for both._

## Which Database?

I used [SQLite](https://sqlite.org/index.html) because it's small, fast, free,
and runs on Macs and Windows (and Linux, too).

I recommend [DB Browser for SQLite](https://sqlitebrowser.org/)
as a database manager since it has a GUI to view the tables
and run the SQL queries.
It, too, is small, fast, free, and runs on Macs and Windows, and Linux.

## Creating the database

Run `sh create_database.sh` to delete all the tables/information from the
SQLite database called **Property-in-Lyme.sqlite**,
then import all the files from the **DefinitiveData** folder.
The resulting database
has separate _tables_, one for each of the imported files.

This script can be run as many times as necessary -
it completely re-generates the database file every time.
This becomes handy if we discover errors in the **DefinitiveData** folder.
Simply correct the file there, and re-run the import script.

The import process uses these files:

- **create_database.sh** - a script to reliably create the tables & views of the SQLite database.
  Run this script with `sh create_database.sh` - it does all the work.

- **Create_Property_in_Lyme.db.sql** - a series of SQL statements
  to create a new (empty) database with each of the tables setup up (but empty).

- **import_into_database.sh** - a helper script to import the
  various files into tables of the SQLite database

## Using the Database

You can Google for tutorials about _DB Browser for SQLite_.
Here are some tips for getting started:

- Click _Open Database_ and select **Property_In_Lyme.sqlite** to open the database
- The _Database Structure_ tab simply lists the various tables available.
  Not terribly interesting.
- The _Edit Pragmas_ tab lets you optimize the database performance.
  This is a small database, and thus really fast. Not terribly interesting.
- The _Browse Data_ tab _is_ interesting.
  Choose from the _Table_ dropdown (upper left) to see the contents of each table.
  You'll recognize all the columns from the spreadsheets.
  Click a column heading to sort by that column.
  Enter a value in _Filter_ at the top of a colum to select matching rows.
- In general, when you quit/exit from the database program you should not save any changes.
  This would be important if our work needed to change the data within the tables.
  But we're not using the database that way:
  we're just "making queries" on the data to see the relationships.
  (If we do need to correct underlying data, we should update the file in
  the "Definitive Data" folder and re-import.)
- Finally, the _Execute SQL_ tab is where we have all the fun.
  Enter SQL commands in the top half.
  (These _SQL statements_ are commands to combine certain columns
  from various tables and exclude certain rows to produce another table.)
  The bottom half shows the result after "running the query".

## Views in the Database

The _Database Structure_ tab shows both tables (above) and _Views_ that are
automatically constructed from the data from various tables...

- **Assess_Apprais_Sales**
  A view that's a combination of ScrapedData, the OldVsNew PDF file,
  and RecentSales tables, adding in the LandClass.
  Updated to include 2Dec2021 values for Appraised values.
  Superceded by the first SQL statement (above).

- **UniqueAsVsAPDina** A view that filters out duplicate rows
  of the AsVsAPDina table.

The remainder of this document has SQL queries to copy/paste.

