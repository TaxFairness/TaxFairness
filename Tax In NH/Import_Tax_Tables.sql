# Import data from the CSV files from various data sources
# This empties the databasetables, then imports the requisite files

delete from NHMuniTaxRate;
delete from NHTownAndCounty;

.mode csv
.import "./NH_TownCounty_TaxRates.csv" NHMuniTaxRate
.import "./NH_TownCounty_Info.csv" NHTownAndCounty
