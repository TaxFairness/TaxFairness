# Import data from the CSV files from various data sources
# This empties the databasetables, then imports the requisite files

delete from ConservationEasements;
delete from Equalization2022;
delete from GraftonCtyRoD;
delete from LymeOldToNew2022;
delete from LymeOldToNew211202;
delete from LymeUseCodes;
delete from OldVsNew;
delete from PA342022;
delete from RawAsVsAPDina;
delete from RecentSales;
delete from SalesConsidered61;
delete from SalesNotUsed;
delete from ScrapedData;
delete from ScrapedData2;
delete from ScrapedData3;
delete from ScrapedData4;
delete from ScrapedData5;
delete from TownAssessment;
delete from VGSIinLyme;
delete from VisionOccCodes;
delete from ZoningPermits;
delete from ScrapedData6;
delete from ScrapedData7;
delete from ScrapedData9;
delete from ScrapedData10;
delete from ScrapedData11;
delete from OwnerHistory;
delete from Buildings;
delete from AssessHistory;
delete from AppraisHistory;
vacuum;

.mode csv
.import "DefinitiveData/ScrapedData-21Nov2021.csv" ScrapedData
.import "DefinitiveData/Town-Assessment-from-PDF-16Feb2022.csv" TownAssessment
.import "DefinitiveData/Vision-Occupancy-Codes.csv" VisionOccCodes
.import "DefinitiveData/Recent Sales Data from Rusty-31Oct2021.csv" RecentSales
.import "DefinitiveData/Lyme Zoning Permits-2016-2022-RB multi Year.csv" ZoningPermits
.import "DefinitiveData/Old-NewValues2021-21Nov2021.csv" OldVsNew
.import "DefinitiveData/002_Lyme Land Use Codes-17Nov2021.csv" LymeUseCodes
.import "DefinitiveData/lyme old to new 21-1202-from-xls-cleaned.csv" LymeOldToNew211202
.import "DefinitiveData/ASSESSED V. APPRAISED DINA W TTL LAND UNITS 21-1202-no-units.csv" RawAsVsAPDina
.import "DefinitiveData/Lyme Conservation Easements as of 2-13-08.csv" ConservationEasements
.import "DefinitiveData/ScrapedData12Jan2022.csv" ScrapedData2
.import "DefinitiveData/ScrapedData6Mar2022.csv" ScrapedData3
.import "DefinitiveData/all sales 19-0401-21-0930 16-tab.csv" SalesConsidered61
.import "DefinitiveData/Sales Not Used-12Jan2022.csv" SalesNotUsed
.import "DefinitiveData/Equalization Tables-29Apr2022.csv" Equalization2022
.import "DefinitiveData/PA-34-29Aug2022.csv" PA342022
.import "DefinitiveData/ScrapedData4-30Aug2022.csv" ScrapedData4
.import "DefinitiveData/2022 OldToNew-JToland-11Oct2022.csv" LymeOldToNew2022
.import "DefinitiveData/ScrapedData5-11Dec2022.csv" ScrapedData5
.import "DefinitiveData/ScrapedData-31Dec2022.csv" ScrapedData6
.import "DefinitiveData/GCRoD-All-Data.csv" GraftonCtyRoD
.import "DefinitiveData/ScrapedData_2023-01-25_16-09-50.csv" ScrapedData7
.import "DefinitiveData/old-new-7Jan2022-HQ-24Jan2023.csv" TaxableProperties
.import "DefinitiveData/ScrapeData_2023-03-01_16-51-30.csv" ScrapedData9
.import "DefinitiveData/ScrapeData10_2023-05-02_21-19-11.csv" ScrapedData10
.import "DefinitiveData/2021_final_ratiostudy.csv" RatioStudy2021
.import "DefinitiveData/2022_final_ratiostudy.csv" RatioStudy2022
.import "DefinitiveData/MS-1_Summary.csv" MS1_Data
.import "DefinitiveData/2023_draft_oldtonew-21Sep2023.csv" LymeOldToNew2023
.import "DefinitiveData/Lyme_CAMA_2022-HQ_10Oct2023.csv" CAMA2022
.import "DefinitiveData/NH_DRA_Muni_Tax_Rates.csv" TaxRates

.mode tabs
.import "DefinitiveData/Land_Use_Codes_from_VGSI.txt" VGSIinLyme
.import "Raw Data/ScrapedData/ScrapedData-17Aug2023/ScrapeData11.tsv" ScrapedData11
.import "Raw Data/ScrapedData/ScrapedData-24Oct2023/ScrapeData12.tsv" ScrapedData12
.import "DefinitiveData/AssmtHistory.tsv" AssessHistory
.import "DefinitiveData/ApprlHistory.tsv" AppraisHistory
.import "DefinitiveData/OwnerHistory.tsv" OwnerHistory
.import "DefinitiveData/Buildings.tsv" Buildings



