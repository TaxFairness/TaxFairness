# To Do file

- Amusing queries from _RawData_ folder
	1. Examine NH Median Household income
	2. Combine _NH Households by municipality_ and _Equalization and Property Values-2022-tables-by-county_ to compute average household value; make scatter plot of household value vs tax rate. (see #3 below)
	3. Check #2 above to against tax rate per average household value incorporating _NH DRA Muni Tax Rates_
	4. Compute tax revenue per acre within Lyme
	5. Compute Residential percentage of grand list, by municipality (to show how commercial property affects tax rate?)
	

## Done

**Merge history files - Started Dec 2023; Complete 18Mar2024**

- _Done_ Move all the ScrapedData folders to RawData 
- _Done_ Modify merge\_history.sh script to pull from RawData
- _Done_ Modify the merge script to dump the each final merged results into DefinitiveData 
- _Done_ Update SQLite import script to pull in merged data files 
- _Done_ Enforce disposal of the _TEST__ files 
- _Done_ Update order of columns read in from xxxHistory.tsv files 
- _Fixed_ Where does "No data for Assessment History" come from? _(It was there
all along - from a previous version of scrapevgsi.py)_

