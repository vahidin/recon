CREATE OR REPLACE FORCE VIEW MFR_MIGR_RUN_V20 AS
SELECT 
  RUN_ID,
  UC4_RUN_ID,
  RUN_STATUS,
  RUN_START_TIME,
  RUN_END_TIME,
  WFT_BLD_ID,
  FACTORY_NAME,
  WFT_NAME,
  WFT_CLASS,
  CMNP_RUN_ID,
  BANK_LOCATION_CODE,
  BNKP_RUN_ID,
  RUN_TYPE
FROM MFL_MIGR_RUN_V20;

