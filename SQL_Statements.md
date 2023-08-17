# SQL Statements for Interesting Queries

Paste any of the statements below into the "Exectute SQL" tab and
click the Run button (Cmd-R/Ctl-R) to execute it.

**Properties whose Improvements, Land, or Total Assessment changed:**
_Uncomment the `where...` clause to select for Street Address;
Uncomment one of the `order by...` clauses to change the sort order._

```sql
select
	sd_map as "Map",
	sd_lot as "Lot",
	sd_unit as "Unit",
	SD_Street_Address as "Street Address",
	SD_Owner as "Owner",
	SD_Lot_Size as "Acres",
	printf("$%,d", SD_App_Land2020) as "AppLand2020",
	printf("$%,d", SD_App_Land2021) as "AppLand2021",
	printf("%1.1f%", (sd_App_Land2021 *100.0/ sd_App_Land2020)-100) as "AppLand% incr",
	printf("$%,d", SD_App_Imp2020) as "AppImpr2020",
	printf("$%,d", SD_App_Imp2021) as "AppImpr2021",
	printf("%1.1f%", (sd_App_Imp2021 *100.0/SD_App_Imp2020)-100) as "AppImpr% incr",
	printf("$%,d", SD_App_Tot2020) as "Tot Appr. 2020",
	printf("$%,d", SD_App_Tot2021) as "Tot Appr. 2021",
	printf("%1.1f%", (sd_App_Tot2021 *100.0/ sd_App_Tot2020)-100) as "Total Appr% incr",
	printf("$%,d", SD_Ass_Land2020) as "AssLand2020",
	printf("$%,d", SD_Ass_Land2021) as "AssLand2021",
	printf("%1.1f%", (sd_Ass_Land2021 *100.0/ sd_Ass_Land2020)-100) as "AssLand% incr",
	printf("$%,d", SD_Ass_Imp2020) as "AssImpr2020",
	printf("$%,d", SD_Ass_Imp2021) as "AssImpr2021",
	printf("%1.1f%", (sd_Ass_Imp2021 *100.0/SD_Ass_Imp2020)-100) as "AssImpr% incr",
	printf("$%,d", SD_Ass_Tot2020) as "Tot Ass. 2020",
	printf("$%,d", SD_Ass_Tot2021) as "Tot Ass. 2021",
	printf("%1.1f%", (sd_Ass_Tot2021 *100.0/ sd_Ass_Tot2020)-100) as "Total Ass.% incr",
	printf("$%,d", SD_Ass_Tot2020) as "Ass. 2020",
	printf("$%,d", SD_Assessment2021) as "Ass. 2021",
	printf("$%,d",cast (SD_Ass_Tot2020*26.66/1000 as integer)) as "Tax2020",
	printf("$%,d",cast (SD_Assessment2021*24.07/1000 as integer)) as "Tax2021",
	printf("%1.1f%",(SD_Assessment2021*24.07-SD_Ass_Tot2020*26.66)*100/(SD_Ass_Tot2020*26.66)) as "Tax %"
from ScrapedData3

where SD_Street_Address like "%orford %"

--order by (SD_Assessment2021*24.07-SD_Ass_Tot2020*26.66)*100/(SD_Ass_Tot2020*26.66) desc -- Tax Increase
order by cast(SD_Street_Address as decimal) -- Street Address
-- order by ((sd_App_Tot2021 *100.0/ sd_App_Tot2020)-100) -- Total Appraisal increase
-- order by ((sd_App_Land2021 *100.0/ sd_App_Land2020)-100) -- Increased Land Value
;
```

**Properties that seem under-appraised**
_Select all (61) recent sale values and compare to the 2021 total appraised value_

```
SELECT
	r.SD_PID,
	l.SC_Map, l.SC_Lot, L.SC_Unit,
	l.SC_Location,
	l.SC_SalePrice,
	r.SD_App_Tot2021,
	printf("%,d",(r.SD_App_Tot2021 - l.SC_SalePrice)) as "Underappraisal",
	printf("%1.1f%",(r.SD_App_Tot2021 - l.SC_SalePrice)*100/r.SD_App_Tot2021) as "Percent"
from SalesConsidered61 l
left JOIN ScrapedData3 r

on SC_Map = SD_Map AND SC_Lot = SD_Lot AND SC_Unit = SD_Unit

--where r.SD_App_Tot2021 <> NULL
order by r.SD_App_Tot2021 DESC
;
```

**Are there assessments that differ between Town's PDF and scraped values from Vision?**
_Short answer: Only a couple_

```sql
select
	TA_Location,
	TA_Map,
	TA_Lot,
	TA_Unit,
	TA_Parcel_Value as Town_Assessment,
	SD_Assessment2021 as Scraped_Assessment
from TownAssessment , ScrapedData
on TA_Map = SD_Map and
	TA_Lot = SD_Lot and
	TA_Unit = SD_Unit and
	TA_Parcel_Value != SD_Assessment2021
;
```

**Are there MBLUs where Street Addresses don't match between Town_Assessment and Scraped_Data?**
_Short answer: Some, nothing surprising. Mostly extra whitespace_

```sql
select
	TA_Map,
	TA_Lot,
	TA_Unit,
	TA_Location as TA_Location,
	SD_Street_Address as Scraped_Location
from TownAssessment l
join ScrapedData r
on TA_Map = r.SD_Map and
	TA_Lot = r.SD_Lot and
	TA_Unit = r.SD_Unit and
	trim(l.TA_Location) != trim(r.SD_Street_Address) AND
	SD_Street_Address not like "Problem%"
;
```

**What are the most common Land Use Codes used in Lyme?**

```sql
SELECT
	count(SD_Description),
	SD_Description
FROM ScrapedData
GROUP BY SD_Description
ORDER by count(*) DESC
;
```

**Compare UseCodes between VGSIinLyme, VisionOcc, and LymeUseCodes**
_The answer: Substantial agreement, especially since the latter was
truncated in the printout..._

```sql
SELECT
	l.VL_Code,
	r.VC_Code,
	LC_UseCode,
	l.VL_Description as VGSIinLyme,
	r.VC_Description as VisionOcc,
	LC_UseDescription as LymeUseCodes
FROM VGSIinLyme l, VISIONOccCodes r, LymeUseCodes c
ON l.VL_Code = r.VC_Code and
	VL_Code = LC_UseCode and
	(l.VL_Description != r.VC_Description OR
	 r.VC_Description != LC_UseDescription)
;
```

**Do MBLU's (and street addresses) from RecentSales match those from ScrapedData?**
_The answer: Yes - differences are upper/lower case..._

```sql
SELECT
	l.RS_Map,
	l.RS_Lot,
	l.RS_Unit,
	l.RS_Address,
	r.SD_Street_Address,
	l.RS_RecentSaleDate
from RecentSales l, ScrapedData r
on l.RS_Map = r.SD_Map and
	l.RS_Lot = r.SD_Lot and
	l.RS_Unit = r.SD_Unit and
	trim(l.RS_Address) != trim(r.SD_Street_Address) and
	trim(l.RS_Address) != ""
;
```

**Does RecentSales price differ much from Assessed value from ScrapedData?**
_The answer: This query looks at 2020 dates to April 2021.
A few wildly out of bounds_

```sql
SELECT
	l.RS_Map as "Map",
	l.RS_Lot as "Lot",
	l.RS_Unit as "Unit",
	l.RS_Address as "Address",
	l.RS_RecentSaleDate as "Date",
	printf("$%,d",l.RS_RecentSalePrice) as RecentSalePrice,
	printf("$%,d",r.SD_Assessment2021) as Assessment,
	printf("%.0f",cast (100+100*(r.SD_Assessment2021-l.RS_RecentSalePrice)/l.RS_RecentSalePrice as real)) as "Percent"
from RecentSales l
join ScrapedData r
on l.RS_Map = r.SD_Map and
	l.RS_Lot = r.SD_Lot and
	l.RS_Unit = r.SD_Unit
WHERE l.RS_Map != "" AND
	l.RS_RecentSaleDate < "2021-04-01"
ORDER BY cast(Percent as integer)
;
```

_Change the query above to use `l.RecentSaleDate >= "2021-04-01"`
to get recent sales_

**Do Street Addresses from OldVsNew match those from ScrapedData?**
_The answer: Yes - differences are upper/lower case..._

```sql
SELECT
	r.ON_Page as "Page",
	r.ON_Row as "Row",
	"" as "",
	l.SD_Map as "Map",
	l.SD_Lot as "Lot",
	l.SD_Unit as "Unit",
	l.SD_Street_Address as "Scraped Address",
	r.ON_Location as "Old/New Address"
from ScrapedData l
join OldVsNew r
on l.SD_Map = r.ON_Map and
	l.SD_Lot = r.ON_Lot and
	l.SD_Unit = r.ON_Unit and
	instr(l.SD_Street_Address,r.ON_Location) = 1;
;
```

**Do MBLU's from OldVsNew match those from ScrapedData?**
_The answer: Yes - differences are upper/lower case..._

```sql
FAULTY SQL
```

**Look for duplicate entries in the UseCode column**
_No interesting duplicates. Huzzah!_

```sql
select LC_UseCode, count(*) c
from LymeUseCodes
group by LC_UseCode having c>1
;
```

**Select properties where Assessment < 50% of Appraisal**
_173 properties, about \$1.1M in tax savings_

```sql
select
	SD_Street_Address as "Address",
	printf("$%,d",SD_Assessment2021) as "2021 Assess.",
	printf("$%,d",SD_Appraisal2021) as "2021 Apprais.",
	printf("$%,d",SD_Appraisal2021-SD_Assessment2021) as "Difference",
	printf("%.0f",cast (100*(SD_Appraisal2021-SD_Assessment2021)/SD_Appraisal2021 as real)) as Ratio,
	printf("$%,d", cast (0.02407*(SD_Appraisal2021-SD_Assessment2021) as integer)) as "Tax Savings"
from ScrapedData
where
	SD_Assessment2021 < SD_Appraisal2021*0.5
order by cast(Ratio as integer) DESC
;
```

**Select Unique Rows between tables**
_Performs a UNION, removing duplicates - 1068 rows;
UNION ALL keeps duplicates.
Ref: [https://www.sqlshack.com/compare-tables-sql-server/](https://www.sqlshack.com/compare-tables-sql-server/)_

```sql
-- Select rows that are present in both tables, removing duplicates
select ON_Map, ON_Lot, ON_Unit from OldVsNew
UNION
select SD_Map, SD_Lot, SD_Unit from ScrapedData
;
```

**Select Rows contained in both tables**
_1045 rows_

```sql
-- Select rows that are present in both tables
select ON_Map, ON_Lot, ON_Unit from OldVsNew
INTERSECT
select SD_Map, SD_Lot, SD_Unit from ScrapedData
;
```

**Select Rows in OldVsNew that aren't in ScrapedData**
_20 rows_

This is now a VIEW in the database.
Each time either table is updated with an import, the contents
of this view should be explicable.

```sql
-- Select rows that are present only in the first table
select ON_Map, ON_Lot, ON_Unit from OldVsNew
EXCEPT
select SD_Map, SD_Lot, SD_Unit from ScrapedData
;
```

**And the reverse: Rows in ScrapedData that aren't in OldVsNew**

This is now a VIEW in the database.
Each time either table is updated with an import, the contents
of this view should be explicable.

```sql
select SD_Map, SD_Lot, SD_Unit from ScrapedData
EXCEPT
select ON_Map, ON_Lot, ON_Unit from OldVsNew
;
```

**Do the Old & New Assessments match between scanned PDF and Assessor's Excel spreadsheet?**
_The answer: Yes - only #6 On The Common #1. differs, but it's a
difference in the location (same values)_

```sql
SELECT
	l.ON_Map,
	l.ON_Lot,
	l.ON_Unit,
	l.ON_Location,
	l.ON_OldValue,
	l.ON_NewValue,
	r.LO_OldValue,
	r.LO_NewValue
from OldVsNew l, LymeOldToNew211202 r
on l.ON_Map = r.LO_Map and
	l.ON_Lot = r.LO_Lot and
	l.ON_Unit = r.LO_Unit and
	(LO_OldValue != ON_OldValue AND LO_NewValue != ON_NewValue)
;
```

**Which recently-improved properties have increased their assessments?**
_Display 2020 Assessment plus cost of improvements, compare that
"Computed Assessment" to the 2021 Assessment, with a "delta" showing above/below_

```sql
SELECT
	l.ZP_Map,
	l.ZP_Lot,
	l.ZP_Unit,
	l.ZP_Address,
	l.ZP_DateIssued as "Date",
	l.ZP_Description,
	l.ZP_EstCost as "Est. Cost",
	r.SD_Prev_Assess2020,
	(r.SD_Prev_Assess2020+l.ZP_EstCost) as "Computed Assess.",
	r.SD_Assessment2021,
	(r.SD_Assessment2021-(r.SD_Prev_Assess2020+l.ZP_EstCost)) as "Delta"
from ZoningPermits l
LEFT JOIN ScrapedData r
on l.ZP_Map = r.SD_Map and
	l.ZP_Lot = r.SD_Lot and
	l.ZP_Unit = r.SD_Unit
WHERE l.ZP_DateIssued > "2020-01-01"
ORDER by ZP_DateIssued
;
```

**Rows in Dina's spreadsheet not in the ScrapedData2** _WIP_

```sql
SELECT
SD_Street_Address, AA_Location,AA_Owner
from ScrapedData2
join AsVsApDina
on AA_Map = SD_Map AND
   AA_Lot = SD_Lot AND
   trim(AA_Unit) = trim(SD_Unit)
;
```

**Horsing around with joins...\***

```sql
-- horsing around with joins
select
	AA_Map,
	AA_Lot,
	AA_Unit,
	AA_Owner,
	SD_Map,
	SD_Lot,
	SD_Unit,
	SD_Owner
from AsVsApDina --, scrapeddata3
inner join ScrapedData3
on aa_map = SD_map and AA_Lot = SD_lot AND AA_Unit = SD_Unit
;
```

**Percent increase in land assessment**

```sql
SELECT
	SD_Street_Address,
	SD_App_Tot2020,
	SD_App_Tot2021,
	100*(SD_App_Tot2021 - sd_app_tot2020)/ SD_App_Tot2021 as "Appr. pct",
	sd_ass_land2020,
	sd_ass_land2021,
	100*(sd_ass_land2021 - sd_ass_land2020)/ sd_ass_land2021 as "Land. pct",
	sd_ass_imp2020,
	sd_ass_imp2021,
	100*(sd_ass_imp2021 - sd_ass_imp2020)/ sd_ass_imp2021 as "Impr. pct"

from ScrapedData3
where SD_Street_Address like "%horton%"
order by 100*(sd_ass_land2021 - sd_ass_land2020)/ sd_ass_land2021
;
```
