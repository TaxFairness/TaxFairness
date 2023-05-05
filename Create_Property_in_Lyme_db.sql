# Create the tables and views for the database

#INSERT INTO  "dates" (startDate,endDate) VALUES ('2014-01-01','2014-12-31');

CREATE TABLE "ScrapedData" (
"SD_PID" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment2021" INTEGER,
"SD_Appraisal2021" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Appr_Year" TEXT,
"SD_Improvements2021" INTEGER,
"SD_Land_Value2021" INTEGER,
"SD_Parcel_Value2021" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Prev_Assess2020" INTEGER,
"SD_Prev_Apprais2020" INTEGER
);

CREATE TABLE "ScrapedData2" (
"SD_PID" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment2021" INTEGER,
"SD_Appraisal2021" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Appr_Year" TEXT,
"SD_App_Imp2021" INTEGER,
"SD_App_Land2021" INTEGER,
"SD_App_Tot2021" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Ass_Imp2020" INTEGER,
"SD_Ass_Land2020" INTEGER,
"SD_Ass_Tot2020" INTEGER,
"SD_App_Imp2020" INTEGER,
"SD_App_Land2020" INTEGER,
"SD_App_Tot2020" INTEGER,
"SD_Empty1" TEXT,
"SD_Empty2" TEXT
);

CREATE TABLE "ScrapedData3" (
"SD_PID" TEXT,
"SD_Owner" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment2021" INTEGER,
"SD_Appraisal2021" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Ass_Imp2021" INTEGER,
"SD_Ass_Land2021" INTEGER,
"SD_Ass_Tot2021" INTEGER,
"SD_Ass_Imp2020" INTEGER,
"SD_Ass_Land2020" INTEGER,
"SD_Ass_Tot2020" INTEGER,
"SD_App_Imp2021" INTEGER,
"SD_App_Land2021" INTEGER,
"SD_App_Tot2021" INTEGER,
"SD_App_Imp2020" INTEGER,
"SD_App_Land2020" INTEGER,
"SD_App_Tot2020" INTEGER,
"SD_Empty1" TEXT,
"SD_Empty2" TEXT
);

CREATE TABLE "ScrapedData4" (
"SD_PID" TEXT,
"SD_Owner" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment2021" INTEGER,
"SD_Appraisal2021" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Ass_Imp2021" INTEGER,
"SD_Ass_Land2021" INTEGER,
"SD_Ass_Tot2021" INTEGER,
"SD_Ass_Imp2020" INTEGER,
"SD_Ass_Land2020" INTEGER,
"SD_Ass_Tot2020" INTEGER,
"SD_App_Imp2021" INTEGER,
"SD_App_Land2021" INTEGER,
"SD_App_Tot2021" INTEGER,
"SD_App_Imp2020" INTEGER,
"SD_App_Land2020" INTEGER,
"SD_App_Tot2020" INTEGER,
"SD_Empty1" TEXT,
"SD_Empty2" TEXT
);

CREATE TABLE "ScrapedData5" (
"SD_PID" TEXT,
"SD_Owner" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment2021" INTEGER,
"SD_Appraisal2021" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Ass_Imp2021" INTEGER,
"SD_Ass_Land2021" INTEGER,
"SD_Ass_Tot2021" INTEGER,
"SD_Ass_Imp2020" INTEGER,
"SD_Ass_Land2020" INTEGER,
"SD_Ass_Tot2020" INTEGER,
"SD_App_Imp2021" INTEGER,
"SD_App_Land2021" INTEGER,
"SD_App_Tot2021" INTEGER,
"SD_App_Imp2020" INTEGER,
"SD_App_Land2020" INTEGER,
"SD_App_Tot2020" INTEGER,
"SD_Empty1" TEXT,
"SD_Empty2" TEXT
);

CREATE TABLE "ScrapedData6" (
"SD_PID" TEXT,
"SD_Owner" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Subunit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment2021" INTEGER,
"SD_Appraisal2021" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Ass_Imp2021" INTEGER,
"SD_Ass_Land2021" INTEGER,
"SD_Ass_Tot2021" INTEGER,
"SD_Ass_Imp2020" INTEGER,
"SD_Ass_Land2020" INTEGER,
"SD_Ass_Tot2020" INTEGER,
"SD_App_Imp2021" INTEGER,
"SD_App_Land2021" INTEGER,
"SD_App_Tot2021" INTEGER,
"SD_App_Imp2020" INTEGER,
"SD_App_Land2020" INTEGER,
"SD_App_Tot2020" INTEGER,
"SD_Empty1" TEXT,
"SD_Empty2" TEXT,
"Collected" TEXT,
"Notes" TEXT
);

CREATE TABLE "ScrapedData7" (
"SD_PID" TEXT,
"SD_Owner" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Subunit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment2021" INTEGER,
"SD_Appraisal2021" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Ass_Imp2021" INTEGER,
"SD_Ass_Land2021" INTEGER,
"SD_Ass_Tot2021" INTEGER,
"SD_Ass_Imp2020" INTEGER,
"SD_Ass_Land2020" INTEGER,
"SD_Ass_Tot2020" INTEGER,
"SD_App_Imp2021" INTEGER,
"SD_App_Land2021" INTEGER,
"SD_App_Tot2021" INTEGER,
"SD_App_Imp2020" INTEGER,
"SD_App_Land2020" INTEGER,
"SD_App_Tot2020" INTEGER,
"SD_CollectedOn" TEXT,
"SD_Empty2" TEXT
);

CREATE TABLE "ScrapedData9" (
"SD_PID" TEXT,
"SD_Owner" TEXT,
"SD_Street_Address" TEXT,
"SD_MBLU" TEXT,
"SD_Map" INTEGER,
"SD_Lot" INTEGER,
"SD_Unit" TEXT,
"SD_Subunit" TEXT,
"SD_Book_Page" TEXT,
"SD_Book" TEXT,
"SD_Page" TEXT,
"SD_Assessment" INTEGER,
"SD_Appraisal" INTEGER,
"SD_Lot_Size" INTEGER,
"SD_Land_Use_Code" TEXT,
"SD_Description" TEXT,
"SD_Zoning_District" TEXT,
"SD_Num_Buildings" INTEGER,
"SD_Recent_Sale_Price" INTEGER,
"SD_Recent_Sale_Date" TEXT,
"SD_Prev_Sale_Price" INTEGER,
"SD_Prev_Sale_Date" TEXT,
"SD_Ass_ImpCurr" INTEGER,
"SD_Ass_LandCurr" INTEGER,
"SD_Ass_TotCurr" INTEGER,
"SD_Ass_ImpPrev" INTEGER,
"SD_Ass_LandPrev" INTEGER,
"SD_Ass_TotPrev" INTEGER,
"SD_App_ImpCurr" INTEGER,
"SD_App_LandCurr" INTEGER,
"SD_App_TotCurr" INTEGER,
"SD_App_ImpPrev" INTEGER,
"SD_App_LandPrev" INTEGER,
"SD_App_TotPrev" INTEGER,
"SD_CollectedOn" TEXT,
"SD_Empty2" TEXT
);

CREATE TABLE "OwnerHistory"
(
"OH_Owner" TEXT,
"OH_Sale_Price" INTEGER,
"OH_Certificate" TEXT,
"OH_Book_Page" TEXT,
"OH_Book" INTEGER,
"OH_Page" INTEGER,
"OH_Instrument" TEXT,
"OH_Sale_Date" TEXT,
"OH_PID" INTEGER,
"OH_CollectedOn" TEXT
);

CREATE TABLE "AppraisHistory"
(
"AP_Year" TEXT,
"AP_Improv" INTEGER,
"AP_Land" INTEGER,
"AP_Total" INTEGER,
"AP_PID" INTEGER,
"AP_CollectedOn" TEXT
);

CREATE TABLE "AssessHistory"
(
"AS_Year" TEXT,
"AS_Improv" INTEGER,
"AS_Land" INTEGER,
"AS_Total" INTEGER,
"AS_PID" INTEGER,
"AS_CollectedOn" TEXT
);

CREATE TABLE "TownAssessment"
(
"TA_Owner Name" TEXT,
"TA_Map" INTEGER,
"TA_Lot" INTEGER,
"TA_Unit" TEXT,
"TA_Location" TEXT,
"TA_Land_Value" INTEGER,
"TA_Improvements" INTEGER,
"TA_Parcel_Value" INTEGER
);

CREATE TABLE "TaxableProperties"
(
"TX_Code" TEXT,
"TX_Account" TEXT,
"TX_IsTaxable" TEXT,
"TX_Page" TEXT,
"TX_Row" TEXT,
"TX_Map" INTEGER,
"TX_Lot" INTEGER,
"TX_Unit" TEXT,
"TX_Subunit" TEXT,
"TX_Location" TEXT,
"TX_Owner" TEXT,
"TX_TownReport2020" INTEGER,
"TX_Old2020" INTEGER,
"TX_New2021" INTEGER,
"TX_Ratio" INTEGER,
"TX_Diff" INTEGER
);

CREATE TABLE "RecentSales" 
(
"RS_PID" TEXT,
"RS_Prev_Owner" TEXT,
"RS_Owner" TEXT, 
"RS_Address" TEXT,
"RS_MBLU" TEXT,
"RS_Map" INTEGER,
"RS_Lot" INTEGER,
"RS_Unit" TEXT,
"RS_Book_Page" TEXT,
"RS_RecentSalePrice" INTEGER,
"RS_RecentSaleDate" TEXT,
"RS_TransferTax" INTEGER,
"RS_BackCalc" TEXT
);

CREATE TABLE "VGSIinLyme"
(
"VL_Code" TEXT,
"VL_Description" TEXT
);

CREATE TABLE "VISIONOccCodes"
(
"VC_Code" TEXT,
"VC_Description" TEXT,
"VC_SummaryCode" TEXT,
"VC_empty" TEXT,
"VC_Type" TEXT
);

CREATE TABLE "ZoningPermits"
(
"ZP_PermitNumber" TEXT,
"ZP_DateApplication" TEXT,
"ZP_DateIssued" TEXT,
"ZP_Map" INTEGER,
"ZP_Lot_Unit" TEXT,
"ZP_Lot" INTEGER,
"ZP_Unit" TEXT,
"ZP_Address" TEXT,
"ZP_Applicant" TEXT,
"ZP_Description" TEXT,
"ZP_EstCost" INTEGER
);

CREATE TABLE "OldVsNew"
(
"ON_Page" TEXT,
"ON_Row" TEXT,
"ON_AcctNumber" TEXT,
"ON_Map" INTEGER,
"ON_Lot" INTEGER,
"ON_Unit" TEXT,
"ON_Location" TEXT,
"ON_Owner" TEXT,
"ON_UseCode" TEXT,
"ON_OldValue" INTEGER,
"ON_NewValue" INTEGER,
"ON_Ratio" REAL,
"ON_Difference" INTEGER
);

CREATE TABLE "LymeUseCodes"
(
"LC_Row" INTEGER,
"LC_UseCode" TEXT,
"LC_UseDescription" TEXT,
"LC_LandClass" TEXT,
"LC_LndLn1" TEXT,
"LC_LndLn2" TEXT,
"LC_Bldgs" TEXT,
"LC_Obldgs" TEXT
);

CREATE TABLE "LymeOldToNew211202"
(
"LO_AcctNumber" TEXT,
"LO_Map" INTEGER,
"LO_Lot" INTEGER,
"LO_Unit" TEXT,
"LO_Empty1" TEXT,
"LO_Location" TEXT,
"LO_Owner" TEXT,
"LO_UseCode" TEXT,
"LO_OldValue" INTEGER,
"LO_NewValue" INTEGER,
"LO_Ratio" REAL,
"LO_Difference" INTEGER
);

CREATE TABLE "LymeOldToNew2022"
(
"LO2_AcctNumber" TEXT,
"LO2_PID" TEXT,
"LO2_MBLU" TEXT,
"LO2_Map" INTEGER,
"LO2_Lot" INTEGER,
"LO2_Unit" TEXT,
"LO2_Location" TEXT,
"LO2_Owner" TEXT,
"LO2_UseCode" TEXT,
"LO2_OldValue" INTEGER,
"LO2_NewValue" INTEGER,
"LO2_Ratio" REAL,
"LO2_Empty" TEXT,
"LO2_Difference" INTEGER,
"LO2_Empty2" TEXT
);


# This table has multiple rows per property
# Use the UniqueAssessVsApprais view for actual work
CREATE TABLE "RawAsVsApDina"
(
"AA_Map" INTEGER,
"AA_Lot" INTEGER,
"AA_Unit" TEXT,
"AA_Empty1" TEXT,
"AA_Location" TEXT,
"AA_Owner" TEXT,
"AA_Appraisal_Improvements" INTEGER,
"AA_Assessment_Improvements" INTEGER,
"AA_Appraisal_Land" INTEGER,
"AA_Assessment_Land" INTEGER,
"AA_Appraisal_Total" INTEGER,
"AA_Assessment_Total" INTEGER,
"AA_UseCode" TEXT,
"AA_UseDescr" TEXT,
"AA_Units" TEXT,
"AA_Mailing" TEXT,
"AA_City" TEXT,
"AA_State" TEXT,
"AA_Zip" TEXT
);

CREATE TABLE "ConservationEasements"
(
"CE_Map" INTEGER,
"CE_Lot-Unit" TEXT,
"CE_Lot" INTEGER,
"CE_Unit" TEXT,
"CE_Owner" TEXT,
"CE_OwnerAddress" TEXT,
"CE_Town_State_Zip" TEXT,
"CE_Phone" TEXT,
"CE_NHLCIP" TEXT,
"CE_Book" INTEGER,
"CE_Page" INTEGER,
"CE_Acres" REAL, 
"CE_Date" TEXT,
"CE_Grantor" TEXT,
"CE_Holder1" TEXT,
"CE_Holder2" TEXT,
"CE_Monitor" TEXT,
"CE_Location" TEXT, 
"CE_Description1" TEXT,
"CE_Description2" TEXT,
"CE_Description3" TEXT,
"CE_Description4" TEXT
)
;

# Table of 61 sales considered for 2021 Revaluation
CREATE TABLE "SalesConsidered61"
(
	"SC_PID" TEXT,
	"SC_Neigh" TEXT,
	"SC_Map" INTEGER,
	"SC_Lot" INTEGER,
	"SC_Unit" TEXT,
	"SC_Location" TEXT,
	"SC_UseCode" TEXT,
	"SC_EffArea" INTEGER,
	"SC_Age" TEXT,
	"SC_EffAge" TEXT,
	"SC_SaleDate" TEXT,
	"SC_SalePrice" INTEGER,
	"SC_ApprVal" INTEGER,
	"SC_RatioAtoS" INTEGER,
	"SC_RatioStoA" INTEGER,
	"SC_AbsDisp" INTEGER
);

# Create table of "Sales Not Used"
# From H. Quinton's photos taken of the Assessor's Manual at Town Offices, 12 Jan 2022

CREATE TABLE "SalesNotUsed"
(
	"NU_Map" INTEGER,
	"NU_Lot" INTEGER,
	"NU_Unit" TEXT,
	"NU_SalesPrice" INTEGER,
	"NU_SaleDate" TEXT,
	"NU_Area" INTEGER,
	"NU_AssessedValue" INTEGER,
	"NU_Style" TEXT,
	"NU_Page" INTEGER,
	"NU_Line" INTEGER
)
;

CREATE TABLE "Equalization2022"
(
	"EQ22_IncExc" TEXT,
	"EQ22_Verno" INTEGER,
	"EQ22_Book_Page" TEXT,
	"EQ22_Book" INTEGER,
	"EQ22_Page" INTEGER,
	"EQ22_SalePrice" INTEGER,
	"EQ22_Assessed" INTEGER,
	"EQ22_Ratio" INTEGER,
	"EQ22_PC" TEXT,
	"EQ22_MC" TEXT,
	"EQ22_SC" TEXT,
	"EQ22_Trim" TEXT,
	"EQ22_SalesDate" TEXT,
	"EQ22_Seller" TEXT,
	"EQ22_Buyer" TEXT,
	"EQ22_Notes" TEXT
)
;

CREATE TABLE "PA342022"
(
	"PA_SeqNo" INTEGER,
	"PA_TransDate" TEXT,
	"PA_Purchaser" TEXT,
	"PA_Seller" TEXT,
	"PA_Location" TEXT,
	"PA_Used" TEXT,
	"PA_NotUsed" TEXT,
	"PA_NoPA34" TEXT,
	"PA_Map" INTEGER,
	"PA_Lot"  INTEGER,
	"PA_Unit" TEXT,
	"PA_Acres" INTEGER,
	"PA_Book_Page" TEXT,
	"PA_Book" INTEGER,
	"PA_Page" INTEGER,
	"PA_SalePrice" INTEGER,
	"PA_Reason" TEXT,
	"PA_LUCT" INTEGER,
	"PA_IsFairMarket" TEXT,
	"PA_Checked" TEXT,
	"PA_Verified" TEXT,
	"PA_Notes" TEXT,
	"PA_RKNQ" TEXT
)
;

CREATE TABLE "GraftonCtyRoD" (
"GC_ID" TEXT,
"GC_DateTime" TEXT,
"GC_Date" TEXT,
"GC_Time" TEXT,
"GC_Type" TEXT,
"GC_Book_Page" TEXT,
"GC_Book" INTEGER,
"GC_Page" INTEGER,
"GC_PageCount" TEXT,
"GC_Party1" TEXT,
"GC_Party2" TEXT,
"GC_Legal" TEXT,
"GC_Notes" TEXT,
"GC_ReturnTo" TEXT,
"GC_Consideration" INTEGER,
"GC_AssocDocs" TEXT,
"GC_TransferTax" INTEGER,
"GC_CollectedOn" TEXT
)
;

CREATE TABLE "RatioStudy2021" (
"RS_Verno" TEXT,
"RS_Book_Page" TEXT,
"RS_Book" TEXT,
"RS_Page" TEXT,
"RS_Sale_Price" INTEGER,
"RS_Assessed_Value" INTEGER,
"RS_Ratio" INTEGER,
"RS_PC" TEXT,
"RS_MC" TEXT,
"RS_SC" TEXT,
"RS_ExclReason" TEXT,
"RS_Notes" TEXT,
"RS_CollectedOn" TEXT
);

CREATE TABLE "RatioStudy2022" (
"RS_Verno" TEXT,
"RS_Old_Verno" TEXT,
"RS_Book_Page" TEXT,
"RS_Book" TEXT,
"RS_Page" TEXT,
"RS_Sale_Price" INTEGER,
"RS_Assessed_Value" INTEGER,
"RS_Ratio" INTEGER,
"RS_PC" TEXT,
"RS_MC" TEXT,
"RS_SC" TEXT,
"RS_ExclReason" TEXT,
"RS_Notes" TEXT,
"RS_CollectedOn" TEXT
);

CREATE TABLE "MS1_Data" (
"MS1_Null" TEXT,
"MS1_Row" TEXT,
"MS1_Description" TEXT,
"MS1_AC_CT" TEXT,
"MS1_Valuation" INTEGER,
"MS1_Key" TEXT,
"MS1_Category" TEXT,
"MS1_Year" TEXT
);

-- VIEWS --

# Current Appraisal values (from Todd's latest spreadsheet via Dina) plus scraped values
CREATE VIEW "Assess_Apprais_Sales" as 
select 
	SD_map as "Map", 
	SD_lot as "Lot", 
	SD_unit as "Unit", 
	SD_Street_Address as "Street Address",
	SD_Lot_Size as "Acres",
	LC_LandClass as "Class",
	printf("$%,d",SD_Assessment2021) as "Assess. 2021",
	printf("$%,d",AA_Appraisal_Total) as "Apprais. 2021",
	printf("$%,d",AA_Appraisal_Improvements) as "Improv. 2021",
	printf("$%,d",AA_Appraisal_Land) as "Land Value 2021",
	printf("$%,d",SD_Prev_Assess2020) as "Assess. 2020",
	printf("$%,d",SD_Prev_Apprais2020) as "Apprais. 2020",
	printf("$%,d",SD_Recent_Sale_Price) as "Recent Sale",
	SD_Recent_Sale_Date as "Recent Date",
	printf("$%,d",SD_Prev_Sale_Price) as "Previous Sale",
	SD_Prev_Sale_Date as "Previous Date",
	printf("$%,d",RS_RecentSalePrice) as "Grafton Sale",
	RS_RecentSaleDate as "Grafton Date"

FROM ScrapedData
LEFT JOIN RecentSales on
	SD_Map = RS_Map
	AND SD_Lot = RS_Lot
	and SD_Unit = RS_Unit
LEFT JOIN UniqueAssessVsApprais on
	SD_Map = AA_Map 
	AND SD_Lot = AA_Lot
	AND SD_Unit = AA_Unit
LEFT JOIN LymeUseCodes
ON 
	SD_Land_Use_Code != ""
	AND  
	SD_Land_Use_Code = LC_UseCode
;

# Current Appraisal values (from Todd's latest spreadsheet via Dina) plus scraped values
CREATE VIEW "Recent_Sale_Comparison" as 
select 
	SD_map as "Map", 
	SD_lot as "Lot", 
	SD_unit as "Unit", 
	SD_Street_Address as "Street Address",
	SD_Lot_Size as "Acres",
	LC_LandClass as "Class",

	printf("$%,d",SD_Ass_Imp2021) as "Ass_Imp_2021",
	printf("$%,d",SD_Ass_Land2021) as "Ass_Land_2021",
	printf("$%,d",SD_Ass_Tot2021) as "Ass_Tot_2021",

	printf("$%,d",SD_Ass_Imp2020) as "Ass_Imp_2020",
	printf("$%,d",SD_Ass_Land2020) as "Ass_Land_2020",
	printf("$%,d",SD_Ass_Tot2020) as "Ass_Tot_2020",

	printf("$%,d",SD_App_Imp2021) as "App_Imp_2021",
	printf("$%,d",SD_App_Land2021) as "App_Land_2021",
	printf("$%,d",SD_App_Tot2021) as "App_Tot_2021",

	printf("$%,d",SD_App_Imp2020) as "App_Imp_2020",
	printf("$%,d",SD_App_Land2020) as "App_Land_2020",
	printf("$%,d",SD_App_Tot2020) as "App_Tot_2020",

	printf("$%,d",SD_Recent_Sale_Price) as "Recent Sale",
	SD_Recent_Sale_Date as "Recent Date",
	printf("$%,d",SD_Prev_Sale_Price) as "Previous Sale",
	SD_Prev_Sale_Date as "Previous Date",
	printf("$%,d",RS_RecentSalePrice) as "Grafton Sale",
	RS_RecentSaleDate as "Grafton Date"

FROM RecentSales
LEFT JOIN ScrapedData3 on
	SD_Map = RS_Map
	AND SD_Lot = RS_Lot
	and SD_Unit = RS_Unit
LEFT JOIN UniqueAssessVsApprais on
	SD_Map = AA_Map 
	AND SD_Lot = AA_Lot
	AND SD_Unit = AA_Unit
LEFT JOIN LymeUseCodes
ON 
	SD_Land_Use_Code != ""
	AND  
	SD_Land_Use_Code = LC_UseCode
;

CREATE VIEW "Sanity_ScrapedNotInOldNew" as 
select ON_Map, ON_Lot, ON_Unit from OldVsNew
EXCEPT 
select SD_Map, SD_Lot, SD_Unit from ScrapedData3
;

CREATE VIEW "Sanity_OldNewNotInScraped" as 
select SD_Map, SD_Lot, SD_Unit from ScrapedData3
EXCEPT 
select ON_Map, ON_Lot, ON_Unit from OldVsNew
;

CREATE VIEW "UniqueAssessVsApprais" as 
select distinct 
	"AA_Map" ,
	"AA_Lot",
	"AA_Unit",
	"AA_Location" 
	"AA_Owner",
	"AA_Appraisal_Improvements" ,
	"AA_Assessment_Improvements" ,
	"AA_Appraisal_Land" ,
	"AA_Assessment_Land" ,
	"AA_Appraisal_Total" ,
	"AA_Assessment_Total" 
from RawAsVsAPDina;

CREATE VIEW "Actual_Deeds" AS 
SELECT
	GC_Type,GC_Date,
	GC_Book, GC_Page,
	SD_PID, SD_Map, SD_Lot, SD_Unit,
	GC_Party1, GC_Party2,
	SD_Street_Address, GC_Notes
FROM GraftonCtyRoD l
left JOIN ScrapedData9 r
on GC_Book = SD_Book AND
	GC_Page = SD_Page
where GC_Type = "DEED" 
order by GC_Date
;