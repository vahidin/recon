CREATE OR REPLACE FORCE VIEW MFR_RAIFFEISEN_BANK_V14 AS
SELECT 
  BANK_LOCATION_CODE,
  BANK_NAME,
  BANK_MIGRATION_STATUS,
  BANK_EXEC_PRIO
FROM MFL_RAIFFEISEN_BANK_V14;
