-- =====================================================
-- =====================================================
-- =====================================================
-- 
-- Tables
-- 
-- =====================================================
-- =====================================================
-- =====================================================

CREATE TABLE "ScrapedData" (
	"SD_PID" INTEGER,
	"SD_Owner" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Subunit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
	"SD_Assessment" INTEGER,
	"SD_Appraisal" INTEGER,
	"SD_Lot_Size" INTEGER,
	"SD_Land_Use_Code" TEXT,
	"SD_Description" TEXT,
	"SD_Zoning_District" TEXT,
	"SD_Neighborhood" TEXT,
	"SD_AltLandApproved" TEXT,
	"SD_Category" TEXT,
	"SD_Frontage" INTEGER,
	"SD_Depth" INTEGER,
	"SD_LandAsmt" INTEGER,
	"SD_LandAppr" INTEGER,
	"SD_Num_Buildings" INTEGER,
	"SD_OwnerOfRecord" TEXT,
	"SD_CoOwner" TEXT,
	"SD_LabelAddress" TEXT,
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
	"SD_Version" INTEGER,
	"SD_CollectedOn" TEXT,
	"SD_Empty2" TEXT
);
-- =====================================================

CREATE TABLE "EasementsFrontage" (
	"EF_PID" INTEGER,
	"EF_Map" TEXT,
	"EF_Lot" TEXT,
	"EF_Unit" TEXT,
	"EF_NoParcel" TEXT,
	"EF_LotSize" INTEGER,
	-- from SD_Lot_Size
	"EF_MapAcres" INTEGER,
	-- from tax map
	"EF_Exempt" TEXT,
	"EF_MuniEasement" TEXT,
	"EF_ConsEasement" TEXT,
	"EF_PartofMap" TEXT,
	"EF_PartofLot" TEXT,
	"EF_PartofUnit" TEXT,
	"EF_Street_Address" TEXT,
	"EF_Frontage" INTEGER,
	-- from tax map
	"EF_FrontSuffix" TEXT,
	"EF_Notes" TEXT,
	"EF_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "ScrapedData1" (
	"SD_PID" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

CREATE TABLE "ScrapedData2" (
	"SD_PID" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

CREATE TABLE "ScrapedData3" (
	"SD_PID" TEXT,
	"SD_Owner" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

CREATE TABLE "ScrapedData4" (
	"SD_PID" TEXT,
	"SD_Owner" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

CREATE TABLE "ScrapedData5" (
	"SD_PID" TEXT,
	"SD_Owner" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

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
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

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
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

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
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

CREATE TABLE "ScrapedData10" (
	"SD_PID" TEXT,
	"SD_Owner" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Subunit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

CREATE TABLE "ScrapedData11" (
	"SD_PID" TEXT,
	"SD_Owner" TEXT,
	"SD_Street_Address" TEXT,
	"SD_MBLU" TEXT,
	"SD_Map" INTEGER,
	"SD_Lot" INTEGER,
	"SD_Unit" TEXT,
	"SD_Subunit" TEXT,
	"SD_Book_Page" TEXT,
	"SD_Book" INTEGER,
	"SD_Page" INTEGER,
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
-- =====================================================

CREATE TABLE "MuniPropVals" (
	"MP_Municipality" INTEGER,
	"MP_Year" INTEGER,
	"MP_Land_CU" INTEGER,
	"MP_Land_Cons" INTEGER,
	"MP_Land_DiscEasement" INTEGER,
	"MP_Land_DiscPreserv" INTEGER,
	"MP_Land_Farm" INTEGER,
	"MP_Land_Residential" INTEGER,
	"MP_Land_Comm_Indus" INTEGER,
	"MP_Bldg_Residential" INTEGER,
	"MP_Bldg_ManfHsing" INTEGER,
	"MP_Bldg_Comm_Indus" INTEGER,
	"MP_Bldg_DiscPreserv" INTEGER,
	"MP_Bldg_Farm" INTEGER,
	"MP_Util_Public_Water" INTEGER,
	"MP_Util_Gas_Oil" INTEGER,
	"MP_Util_Electric" INTEGER,
	"MP_Other" INTEGER,
	"MP_Timber" INTEGER,
	"MP_Gross_Valuation" INTEGER,
	"MP_Ed_SpecExempt" INTEGER,
	"MP_Modified_Ass_Val" INTEGER,
	"MP_Blind_Exemption" INTEGER,
	"MP_Elderly_Exempt" INTEGER,
	"MP_Local_Opt_Exempt" INTEGER,
	"MP_Net_Valuation" INTEGER,
	"MP_Gross_Prop_Taxes" INTEGER,
	"MP_Less_Vet_Credits" INTEGER,
	"MP_Net_Tax_Commit" INTEGER,
	"MP_2022_Tax_Rate" INTEGER,
	"MP_2022_Resident_Tax" INTEGER,
	"MP_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "CorrectedZoningDistrict" (
	"CZD_PID" INTEGER,
	"CZD_Address" TEXT,
	"CZD_Map" INTEGER,
	"CZD_Lot" INTEGER,
	"CZD_Unit" TEXT,
	"CZD_Vision" TEXT,
	"CZD_Actual" TEXT,
	"CZD_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "OwnerHistory" (
	"OH_PID" INTEGER,
	"OH_Owner" TEXT,
	"OH_Sale_Price" INTEGER,
	"OH_Certificate" TEXT,
	"OH_Book_Page" TEXT,
	"OH_Book" INTEGER,
	"OH_Page" INTEGER,
	"OH_Instrument" TEXT,
	"OH_Sale_Date" TEXT,
	"OH_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "AppraisHistory" (
	"AP_PID" INTEGER,
	"AP_Year" TEXT,
	"AP_Improv" INTEGER,
	"AP_Land" INTEGER,
	"AP_Total" INTEGER,
	"AP_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "AssessHistory" (
	"AS_PID" INTEGER,
	"AS_Year" TEXT,
	"AS_Improv" INTEGER,
	"AS_Land" INTEGER,
	"AS_Total" INTEGER,
	"AS_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "TownAssessment" (
	"TA_Owner Name" TEXT,
	"TA_Map" INTEGER,
	"TA_Lot" INTEGER,
	"TA_Unit" TEXT,
	"TA_Location" TEXT,
	"TA_Land_Value" INTEGER,
	"TA_Improvements" INTEGER,
	"TA_Parcel_Value" INTEGER
);
-- =====================================================

CREATE TABLE "CAMA2022" (
	"CAMA_Name" TEXT,
	"CAMA_LocalCamaId" TEXT,
	"CAMA_U_ID" TEXT,
	"CAMA_RawId" TEXT,
	"CAMA_AltId" TEXT,
	"CAMA_DisplayId" TEXT,
	"CAMA_LinkId" TEXT,
	"CAMA_ParcelLinkStatus" TEXT,
	"CAMA_ParcelOID" TEXT,
	"CAMA_NHGIS_ID" TEXT,
	"CAMA_TownName" TEXT,
	"CAMA_TownId" TEXT,
	"CAMA_CountyName" TEXT,
	"CAMA_CountyId" TEXT,
	"CAMA_camaVendor" TEXT,
	"CAMA_CamaVendorId" TEXT,
	"CAMA_SLU" TEXT,
	"CAMA_SLUC" TEXT,
	"CAMA_SLUC_desc" TEXT,
	"CAMA_SLUM" TEXT,
	"CAMA_NBC" TEXT,
	"CAMA_LandUseCode" TEXT,
	"CAMA_LocalNBC" TEXT,
	"CAMA_ZoneCode" TEXT,
	"CAMA_UtilityCode1" TEXT,
	"CAMA_UtilityCode2" TEXT,
	"CAMA_UtilityCode3" TEXT,
	"CAMA_StreetAddress" TEXT,
	"CAMA_StreetNumber" TEXT,
	"CAMA_StreetName" TEXT,
	"CAMA_OwnerName" TEXT,
	"CAMA_CoOwnerName" TEXT,
	"CAMA_MailingAddress" TEXT,
	"CAMA_MailingAddress2" TEXT,
	"CAMA_MailingCity" TEXT,
	"CAMA_MailingZip" TEXT,
	"CAMA_MailingState" TEXT,
	"CAMA_Map" TEXT,
	"CAMA_MapCut" TEXT,
	"CAMA_Block" TEXT,
	"CAMA_BlockCut" TEXT,
	"CAMA_Lot" TEXT,
	"CAMA_LotCut" TEXT,
	"CAMA_Unit" TEXT,
	"CAMA_UnitCut" TEXT,
	"CAMA_Sub" TEXT,
	"CAMA_LandArea" TEXT,
	"CAMA_LandAreaChange" TEXT,
	"CAMA_StructureAreaGross" TEXT,
	"CAMA_StructureAreaGrossChange" TEXT,
	"CAMA_StructureAreaNet" TEXT,
	"CAMA_StructureGrade" TEXT,
	"CAMA_StructureGradeChanged" TEXT,
	"CAMA_StructureCondition" TEXT,
	"CAMA_StructureConditionChanged" TEXT,
	"CAMA_StructureType1" TEXT,
	"CAMA_StructureType2" TEXT,
	"CAMA_StructureType3" TEXT,
	"CAMA_YearBuiltActual" TEXT,
	"CAMA_BathroomCount" TEXT,
	"CAMA_FullBathroomCount" TEXT,
	"CAMA_HalfBathroomCount" TEXT,
	"CAMA_BedroomCount" TEXT,
	"CAMA_RoomCount" TEXT,
	"CAMA_RoofCover" TEXT,
	"CAMA_RoofType" TEXT,
	"CAMA_WallTypeExterior" TEXT,
	"CAMA_WallTypeInterior" TEXT,
	"CAMA_IsStateOwned" TEXT,
	"CAMA_TaxLand" TEXT,
	"CAMA_PrevTaxLand" TEXT,
	"CAMA_TaxLandChange" TEXT,
	"CAMA_TaxLandPercentChange" TEXT,
	"CAMA_TaxBldg" TEXT,
	"CAMA_PrevTaxBldg" TEXT,
	"CAMA_TaxBldgPercentChange" TEXT,
	"CAMA_TaxBldgChange" TEXT,
	"CAMA_TaxFeatures" TEXT,
	"CAMA_PrevTaxFeatures" TEXT,
	"CAMA_TaxFeaturesChange" TEXT,
	"CAMA_TaxFeaturesPercentChange" TEXT,
	"CAMA_TaxTotal" TEXT,
	"CAMA_PrevTaxTotal" TEXT,
	"CAMA_TaxTotalChange" TEXT,
	"CAMA_TaxTotalPercentChange" TEXT,
	"CAMA_CamaYear" TEXT,
	"CAMA_CurrentTo" TEXT,
	"CAMA_PrevCurrentTo" TEXT,
	"CAMA_CamaOID" TEXT,
	"CAMA_CardCount" TEXT,
	"CAMA_CamaCount" TEXT,
	"CAMA_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "TaxableProperties" (
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
-- =====================================================

CREATE TABLE "RecentSales" (
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
-- =====================================================

CREATE TABLE "VGSIinLyme" (
	"VL_Code" TEXT, 
	"VL_Description" TEXT
);

-- =====================================================

CREATE TABLE "VISIONOccCodes" (
	"VC_Code" TEXT,
	"VC_Description" TEXT,
	"VC_SummaryCode" TEXT,
	"VC_empty" TEXT,
	"VC_Type" TEXT
);
-- =====================================================

CREATE TABLE "ZoningPermits" (
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
	"ZP_EstCost" INTEGER,
	"ZP_CollectedOn" TEXT,
	"ZP_Duplicate" TEXT
);
-- =====================================================

CREATE TABLE "LymeUseCodes" (
	"LC_Row" INTEGER,
	"LC_UseCode" TEXT,
	"LC_UseDescription" TEXT,
	"LC_LandClass" TEXT,
	"LC_LndLn1" TEXT,
	"LC_LndLn2" TEXT,
	"LC_Bldgs" TEXT,
	"LC_Obldgs" TEXT
);

-- Manually appended all use codes from ScrapedData & SpecialLand table
CREATE TABLE "xAllUseCodes" (
	"AU_Code" TEXT,
	"AU_Descr" TEXT,
	"AU_Source" TEXT
);
-- =====================================================

CREATE TABLE "LymeOldToNew" (
	"LO_Ignore1" TEXT,
	"LO_PID" TEXT,
	"LO_MBLU" TEXT,
	"LO_Map" INTEGER,
	"LO_Lot" INTEGER,
	"LO_Unit" TEXT,
	"LO_Subunit" TEXT,
	"LO_Location" TEXT,
	"LO_Owner" TEXT,
	"LO_UseCode" TEXT,
	"LO_OldValue" INTEGER,
	"LO_NewValue" INTEGER,
	"LO_Ratio" REAL,
	"LO_Difference" INTEGER,
	"LO_Year" TEXT,
	"LO_CollectedOn" TEXT
);
-- =====================================================

CREATE TABLE "Oct2024O2N" (
	"LO_Ignore2" TEXT,
	"LO_PID" TEXT,
	"LO_MBLU" TEXT,
	"LO_Map" INTEGER,
	"LO_Lot" INTEGER,
	"LO_Unit" TEXT,
	"LO_Subunit" TEXT,
	"LO_Location" TEXT,
	"LO_Owner" TEXT,
	"LO_UseCode" TEXT,
	"LO_OldValue" INTEGER,
	"LO_NewValue" INTEGER,
	"LO_Ratio" REAL,
	"LO_Difference" INTEGER,
	"LO_Year" TEXT,
	"LO_CollectedOn" TEXT
);

--This table has multiple rows per property
--Use the UniqueAssessVsApprais view for actual work
CREATE TABLE "RawAsVsApDina" (
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
-- =====================================================

CREATE TABLE "ConservationEasements" (
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
);

--Table of 61 sales considered for 2021 Revaluation
CREATE TABLE "SalesConsidered61" (
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
--Create table of "Sales Not Used"
-- From H. Quinton's photos taken of the Assessor's Manual at Town Offices, 12 Jan 2022
CREATE TABLE "SalesNotUsed" (
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
);
-- =====================================================

CREATE TABLE "Equalization2022" (
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
);
-- =====================================================

CREATE TABLE "PA342022" (
	"PA_SeqNo" INTEGER,
	"PA_TransDate" TEXT,
	"PA_Purchaser" TEXT,
	"PA_Seller" TEXT,
	"PA_Location" TEXT,
	"PA_Used" TEXT,
	"PA_NotUsed" TEXT,
	"PA_NoPA34" TEXT,
	"PA_Map" INTEGER,
	"PA_Lot" INTEGER,
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
);
-- =====================================================

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
	"GC_CollectedOn" TEXT,
	"GC_Null" TEXT
);
-- =====================================================

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
-- =====================================================

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
-- =====================================================

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
-- =====================================================

CREATE TABLE "Buildings" (
	"BL_PID" TEXT,
	"BL_BuildingNum" TEXT,
	"BL_Year_Built" TEXT,
	"BL_Living_Area1" INTEGER,
	"BL_Replacement_Cost" INTEGER,
	"BL_Percent_Good" INTEGER,
	"BL_Value_after_Depreciation" INTEGER,
	"BL_Style" TEXT,
	"BL_Model" TEXT,
	"BL_Grade" TEXT,
	"BL_Stories" TEXT,
	"BL_Total_Bedrooms" TEXT,
	"BL_Total_Bthrms" TEXT,
	"BL_Total_Half_Baths" TEXT,
	"BL_Total_Rooms" TEXT,
	"BL_Num_Kitchens" TEXT,
	"BL_Gross_Floor_Area" INTEGER,
	"BL_Living_Area" INTEGER,
	"BL_CollectedOn" TEXT
);

-- =====================================================

CREATE TABLE "Outbuildings" (
	"OB_PID" TEXT,
	"OB_Code" TEXT,
	"OB_Description" TEXT,
	"OB_Subcode" TEXT,
	"OB_Subdescr" TEXT,
	"OB_Size" INTEGER,
	"OB_Units" TEXT,
	"OB_Value" INTEGER,
	"OB_BldgNum" INTEGER,
	"OB_CollectedOn" TEXT
);

-- =====================================================

CREATE TABLE "ExtraFeatures" (
	"XF_PID" TEXT,
	"XF_Code" TEXT,
	"XF_Description" TEXT,
	"XF_Size" INTEGER,
	"XF_Units" TEXT,
	"XF_Value" INTEGER,
	"XF_BldgNum" INTEGER,
	"XF_CollectedOn" TEXT
);

-- =====================================================

CREATE TABLE "SpecialLand" (
	"SL_PID" TEXT,
	"SL_Code" TEXT,
	"SL_Description" TEXT,
	"SL_Units" TEXT,
	"SL_UnitType" TEXT,
	"SL_CollectedOn" TEXT

);

-- =====================================================

CREATE TABLE "TaxRates" (
	"TR_Municipality" TEXT,
	"TR_Tax_Year" TEXT,
	"TR_DateComputed" TEXT,
	"TR_Valuation" INTEGER,
	"TR_Valuation_with_Utilities" INTEGER,
	"TR_Municipal" INTEGER,
	"TR_County" INTEGER,
	"TR_State_Ed" INTEGER,
	"TR_Local_Ed" INTEGER,
	"TR_Total_Rate" INTEGER,
	"TR_Total_Commitment" INTEGER,
	"TR_CollectedOn" TEXT
);

-- =====================================================

CREATE TABLE "SpecialLandExplanations" (
	"SLE_Code" TEXT,
	"SLE_Explanation" TEXT
);

-- =====================================================
-- =====================================================
-- =====================================================
-- 
-- Views
-- 
-- =====================================================
-- =====================================================
-- =====================================================

-- 
CREATE VIEW "CleanScrapedData" as
WITH table_1 AS (
  SELECT
    "SD_CollectedOn",
    "SD_Version",
    "SD_LabelAddress",
    "SD_CoOwner",
    "SD_OwnerOfRecord",
    "SD_App_TotPrev",
    "SD_App_LandPrev",
    "SD_App_ImpPrev",
    "SD_App_TotCurr",
    "SD_App_LandCurr",
    "SD_App_ImpCurr",
    "SD_Ass_TotPrev",
    "SD_Ass_LandPrev",
    "SD_Ass_ImpPrev",
    "SD_Ass_TotCurr",
    "SD_Ass_LandCurr",
    "SD_Ass_ImpCurr",
    "SD_Prev_Sale_Date",
    "SD_Prev_Sale_Price",
    "SD_Recent_Sale_Date",
    "SD_Recent_Sale_Price",
    "SD_Num_Buildings",
    "SD_LandAppr",
    "SD_LandAsmt",
    "SD_Depth",
    "SD_Frontage",
    "SD_Category",
    "SD_AltLandApproved",
    "SD_Neighborhood",
    "SD_Land_Use_Code",
    "SD_Lot_Size",
    "SD_Appraisal",
    "SD_Assessment",
    "SD_Page",
    "SD_Book",
    "SD_Book_Page",
    "SD_Subunit",
    "SD_Unit",
    "SD_Lot",
    "SD_Map",
    "SD_MBLU",
    "SD_Street_Address",
    "SD_Owner",
    "SD_PID",
    "SD_Zoning_District"
  FROM
    "ScrapedData" AS sd
  WHERE
    "SD_CollectedOn" = DATE('2024-12-04')
),
table_0 AS (
  SELECT
    lu."UseClass",
    lu."UseDesc",
    lu."UseExpl",
    CASE
      WHEN table_1."SD_Street_Address" like '%' || 'ORFORD ' || '%' THEN 1
      WHEN table_1."SD_Street_Address" like '%' || 'DARTMOUTH COLLEGE' || '%' THEN 1
      WHEN table_1."SD_Street_Address" like '%' || 'DORCHESTER' || '%' THEN 1
      WHEN table_1."SD_Street_Address" like '%' || 'THETFORD' || '%' THEN 1
      ELSE 0
    END AS "StateRoad",
    table_1."SD_CollectedOn",
    table_1."SD_Version",
    table_1."SD_LabelAddress",
    table_1."SD_CoOwner",
    table_1."SD_OwnerOfRecord",
    table_1."SD_App_TotPrev",
    table_1."SD_App_LandPrev",
    table_1."SD_App_ImpPrev",
    table_1."SD_App_TotCurr",
    table_1."SD_App_LandCurr",
    table_1."SD_App_ImpCurr",
    table_1."SD_Ass_TotPrev",
    table_1."SD_Ass_LandPrev",
    table_1."SD_Ass_ImpPrev",
    table_1."SD_Ass_TotCurr",
    table_1."SD_Ass_LandCurr",
    table_1."SD_Ass_ImpCurr",
    table_1."SD_Prev_Sale_Date",
    table_1."SD_Prev_Sale_Price",
    table_1."SD_Recent_Sale_Date",
    table_1."SD_Recent_Sale_Price",
    table_1."SD_Num_Buildings",
    ef."EF_FrontSuffix",
    ef."EF_Frontage",
    ef."EF_ConsEasement",
    ef."EF_MuniEasement",
    ef."EF_Exempt",
    table_1."SD_LandAppr",
    table_1."SD_LandAsmt",
    table_1."SD_Depth",
    table_1."SD_Frontage",
    table_1."SD_Category",
    table_1."SD_AltLandApproved",
    table_1."SD_Neighborhood",
    table_1."SD_Land_Use_Code",
    table_1."SD_Lot_Size",
    table_1."SD_Appraisal",
    table_1."SD_Assessment",
    table_1."SD_Page",
    table_1."SD_Book",
    table_1."SD_Book_Page",
    table_1."SD_Subunit",
    table_1."SD_Unit",
    table_1."SD_Lot",
    table_1."SD_Map",
    table_1."SD_MBLU",
    table_1."SD_Street_Address",
    table_1."SD_Owner",
    table_1."SD_PID",
    CASE
      WHEN table_1."SD_Zoning_District" = 'ES' THEN 'RD'
      WHEN table_1."SD_Zoning_District" = 'R' THEN 'RD'
      WHEN table_1."SD_Zoning_District" = 'SFR' THEN 'RD'
      WHEN table_1."SD_Zoning_District" = 'URD' THEN 'RD'
      WHEN table_1."SD_Zoning_District" = 'SD' THEN 'RD'
      WHEN table_1."SD_Zoning_District" = 'LCD' THEN 'LCD'
      WHEN table_1."SD_Zoning_District" = 'CD' THEN 'LCD'
      WHEN table_1."SD_Zoning_District" = 'LDC' THEN 'LCD'
      WHEN table_1."SD_Zoning_District" = '' THEN NULL
      ELSE table_1."SD_Zoning_District"
    END AS _expr_0,
    czd."CZD_Actual",
    table_1."SD_Zoning_District"
  FROM
    table_1
    LEFT JOIN "CorrectedZoningDistrict" AS czd ON table_1."SD_PID" = czd."CZD_PID"
    LEFT JOIN "EasementsFrontage" AS ef ON table_1."SD_PID" = ef."EF_PID"
    LEFT JOIN "AllUseCodes" AS lu ON table_1."SD_Land_Use_Code" = lu."UseCode"
)
SELECT
  "SD_PID" AS "PID",
  "SD_Owner" AS "Owner",
  "SD_Street_Address" AS "Street_Address",
  "SD_MBLU" AS "MBLU",
  "SD_Map" AS "Map",
  "SD_Lot" AS "Lot",
  "SD_Unit" AS "Unit",
  "SD_Subunit" AS "Subunit",
  "SD_Book_Page" AS "Book_Page",
  "SD_Book" AS "Book",
  "SD_Page" AS "Page",
  "SD_Assessment" AS "Assessment",
  "SD_Appraisal" AS "Appraisal",
  "SD_Lot_Size" AS "Lot_Size",
  "SD_Land_Use_Code" AS "UseCode",
  "UseClass",
  "UseDesc",
  "UseExpl",
  COALESCE(_expr_0, "CZD_Actual") AS "District",
  CASE
    WHEN COALESCE(_expr_0, "CZD_Actual") = 'RD'
    AND "StateRoad" = 1 THEN 'Rural-State Road'
    WHEN COALESCE(_expr_0, "CZD_Actual") = 'RD'
    AND "StateRoad" = 0 THEN 'Rural-Town Road'
    WHEN COALESCE(_expr_0, "CZD_Actual") = 'BD' THEN 'Commercial'
    WHEN COALESCE(_expr_0, "CZD_Actual") = 'LCD' THEN 'LymeCommon/Ctr'
    WHEN COALESCE(_expr_0, "CZD_Actual") = 'ELD' THEN 'EastLyme'
    WHEN COALESCE(_expr_0, "CZD_Actual") = 'SKIWAY' THEN 'Skiway'
    WHEN COALESCE(_expr_0, "CZD_Actual") = 'MFD' THEN 'MtnForest'
    ELSE COALESCE(_expr_0, "CZD_Actual")
  END AS "DistrictName",
  "SD_Neighborhood" AS "Neighborhood",
  "SD_AltLandApproved" AS "AltLandApproved",
  "SD_Category" AS "Category",
  "SD_Frontage" AS _expr_1,
  "SD_Depth" AS "Depth",
  "SD_LandAsmt" AS "LandAsmt",
  "SD_LandAppr" AS "LandAppr",
  "StateRoad",
  "EF_Exempt" AS "Exempt",
  "EF_MuniEasement" AS "MuniEasement",
  "EF_ConsEasement" AS "ConsEasement",
  "EF_Frontage" AS "Frontage",
  "EF_FrontSuffix" AS "FrontSuffix",
  "SD_Num_Buildings" AS "Num_Buildings",
  "SD_Recent_Sale_Price" AS "Recent_Sale_Price",
  "SD_Recent_Sale_Date" AS "Recent_Sale_Date",
  "SD_Prev_Sale_Price" AS "Prev_Sale_Price",
  "SD_Prev_Sale_Date" AS "Prev_Sale_Date",
  "SD_Ass_ImpCurr" AS "Ass_ImpCurr",
  "SD_Ass_LandCurr" AS "Ass_LandCurr",
  "SD_Ass_TotCurr" AS "Ass_TotCurr",
  "SD_Ass_ImpPrev" AS "Ass_ImpPrev",
  "SD_Ass_LandPrev" AS "Ass_LandPrev",
  "SD_Ass_TotPrev" AS "Ass_TotPrev",
  "SD_App_ImpCurr" AS "App_ImpCurr",
  "SD_App_LandCurr" AS "App_LandCurr",
  "SD_App_TotCurr" AS "App_TotCurr",
  "SD_App_ImpPrev" AS "App_ImpPrev",
  "SD_App_LandPrev" AS "App_LandPrev",
  "SD_App_TotPrev" AS "App_TotPrev",
  "SD_OwnerOfRecord" AS "OwnerOfRecord",
  "SD_CoOwner" AS "CoOwner",
  "SD_LabelAddress" AS "Label_Address",
  "SD_Version" AS "Version",
  "SD_CollectedOn" AS "CollectedOn"
FROM
  table_0
ORDER BY
  "PID"

-- Generated by PRQL compiler version:0.13.2 (https://prql-lang.org)


--- ========= END OF CleanScrapedData ==============
;


CREATE VIEW "AllUseCodes" as 
WITH table_0 AS (
  SELECT
    a."AU_Code" AS "UseCode",
    a."AU_Source",
    a."AU_Descr" AS "UseDesc",
    c."LC_LandClass" AS "UseClass",
    e."SLE_Explanation" AS "UseExpl",
    ROW_NUMBER() OVER (PARTITION BY a."AU_Code") AS _expr_0
  FROM
    "xAllUseCodes" AS a
    LEFT JOIN "SpecialLandExplanations" AS e ON a."AU_Code" = e."SLE_Code"
    LEFT JOIN "SpecialLand" AS x ON a."AU_Code" = x."SL_Code"
    LEFT JOIN "LymeUseCodes" AS c ON a."AU_Code" = c."LC_UseCode"
)
SELECT
  "UseCode",
  "AU_Source",
  "UseDesc",
  "UseClass",
  "UseExpl"
FROM
  table_0
WHERE
  _expr_0 <= 1

-- Generated by PRQL compiler version:0.13.2 (https://prql-lang.org)
-- End of AllUseCodes
;

-- Current Appraisal values (from Todd's latest spreadsheet via Dina) plus scraped values
CREATE VIEW "Assess_Apprais_Sales" as
select SD_map as "Map",
	SD_lot as "Lot",
	SD_unit as "Unit",
	SD_Street_Address as "Street Address",
	SD_Lot_Size as "Acres",
	LC_LandClass as "Class",
	printf("$%,d", SD_Assessment2021) as "Assess. 2021",
	printf("$%,d", AA_Appraisal_Total) as "Apprais. 2021",
	printf("$%,d", AA_Appraisal_Improvements) as "Improv. 2021",
	printf("$%,d", AA_Appraisal_Land) as "Land Value 2021",
	printf("$%,d", SD_Prev_Assess2020) as "Assess. 2020",
	printf("$%,d", SD_Prev_Apprais2020) as "Apprais. 2020",
	printf("$%,d", SD_Recent_Sale_Price) as "Recent Sale",
	SD_Recent_Sale_Date as "Recent Date",
	printf("$%,d", SD_Prev_Sale_Price) as "Previous Sale",
	SD_Prev_Sale_Date as "Previous Date",
	printf("$%,d", RS_RecentSalePrice) as "Grafton Sale",
	RS_RecentSaleDate as "Grafton Date"
FROM ScrapedData
	LEFT JOIN RecentSales on SD_Map = RS_Map
	AND SD_Lot = RS_Lot
	and SD_Unit = RS_Unit
	LEFT JOIN UniqueAssessVsApprais on SD_Map = AA_Map
	AND SD_Lot = AA_Lot
	AND SD_Unit = AA_Unit
	LEFT JOIN LymeUseCodes ON SD_Land_Use_Code != ""
	AND SD_Land_Use_Code = LC_UseCode;

-- Current Appraisal values (from Todd's latest spreadsheet via Dina) plus scraped values
CREATE VIEW "Recent_Sale_Comparison" as
select SD_map as "Map",
	SD_lot as "Lot",
	SD_unit as "Unit",
	SD_Street_Address as "Street Address",
	SD_Lot_Size as "Acres",
	LC_LandClass as "Class",
	printf("$%,d", SD_Ass_Imp2021) as "Ass_Imp_2021",
	printf("$%,d", SD_Ass_Land2021) as "Ass_Land_2021",
	printf("$%,d", SD_Ass_Tot2021) as "Ass_Tot_2021",
	printf("$%,d", SD_Ass_Imp2020) as "Ass_Imp_2020",
	printf("$%,d", SD_Ass_Land2020) as "Ass_Land_2020",
	printf("$%,d", SD_Ass_Tot2020) as "Ass_Tot_2020",
	printf("$%,d", SD_App_Imp2021) as "App_Imp_2021",
	printf("$%,d", SD_App_Land2021) as "App_Land_2021",
	printf("$%,d", SD_App_Tot2021) as "App_Tot_2021",
	printf("$%,d", SD_App_Imp2020) as "App_Imp_2020",
	printf("$%,d", SD_App_Land2020) as "App_Land_2020",
	printf("$%,d", SD_App_Tot2020) as "App_Tot_2020",
	printf("$%,d", SD_Recent_Sale_Price) as "Recent Sale",
	SD_Recent_Sale_Date as "Recent Date",
	printf("$%,d", SD_Prev_Sale_Price) as "Previous Sale",
	SD_Prev_Sale_Date as "Previous Date",
	printf("$%,d", RS_RecentSalePrice) as "Grafton Sale",
	RS_RecentSaleDate as "Grafton Date"
FROM RecentSales
	LEFT JOIN ScrapedData3 on SD_Map = RS_Map
	AND SD_Lot = RS_Lot
	and SD_Unit = RS_Unit
	LEFT JOIN UniqueAssessVsApprais on SD_Map = AA_Map
	AND SD_Lot = AA_Lot
	AND SD_Unit = AA_Unit
	LEFT JOIN LymeUseCodes ON SD_Land_Use_Code != ""
	AND SD_Land_Use_Code = LC_UseCode;

-- =====================================================

CREATE VIEW "Sanity_ScrapedNotInOldNew" as
select ON_Map,
	ON_Lot,
	ON_Unit
from OldVsNew
EXCEPT
select SD_Map,
	SD_Lot,
	SD_Unit
from ScrapedData3;
CREATE VIEW "Sanity_OldNewNotInScraped" as
select SD_Map,
	SD_Lot,
	SD_Unit
from ScrapedData3
EXCEPT
select ON_Map,
	ON_Lot,
	ON_Unit
from OldVsNew;

-- =====================================================

CREATE VIEW "UniqueAssessVsApprais" as
select distinct "AA_Map",
	"AA_Lot",
	"AA_Unit",
	"AA_Location" "AA_Owner",
	"AA_Appraisal_Improvements",
	"AA_Assessment_Improvements",
	"AA_Appraisal_Land",
	"AA_Assessment_Land",
	"AA_Appraisal_Total",
	"AA_Assessment_Total"
from RawAsVsAPDina;

-- =====================================================

CREATE VIEW "Actual_Deeds" AS
SELECT GC_Type,
	GC_Date,
	GC_Book,
	GC_Page,
	SD_PID,
	SD_Map,
	SD_Lot,
	SD_Unit,
	GC_Party1,
	GC_Party2,
	SD_Street_Address,
	GC_Notes
FROM GraftonCtyRoD l
	left JOIN ScrapedData9 r on GC_Book = SD_Book
	AND GC_Page = SD_Page
where GC_Type = "DEED"
order by GC_Date;