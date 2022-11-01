# Create the tables and views for the database

#INSERT INTO  "dates" (startDate,endDate) VALUES ('2014-01-01','2014-12-31');

CREATE TABLE "NHMuniTaxRate" (
"Municipality" TEXT,
"Tax_Rate" INTEGER,
"PctIncr" TEXT,
"IncreaseFrom2021" INTEGER
);

CREATE TABLE "NHTownAndCounty" (
"Municipality" TEXT,
"County" TEXT,
"IncorpDate" TEXT,
"Population" INTEGER,
"LandArea" INTEGER,
"Form" TEXT,
"PopPlaces" TEXT
);