CREATE OR REPLACE FORCE VIEW MFC_LDG_D2K_FND_V AS
SELECT 
  FND_ID,
  LDG_ACC_KEY,
  LDG_ACC_NAME,
  PRICE_PER_UNIT,
  ACC_CURR_CD,
  ACC_AMOUNT,
  EXCH_RATE,
  ACC_AMOUNT_CHF,
  LDG_FND_COMMENT,
  LDG_FND_SIGN_OFF_FG, 
  LDG_FND_BUG_FIX_ITIL_NO,
  MATCH_ACC_AMOUNT_CHF,
  MIGR_RUN_ID,
  RCN_PRCS_ID,
  MAP_D2K_LDG_ACC_KEY,
  MAP_ACS_LDG_ACC_KEY,
  INHERIT_FND_ID,
  INHERIT_RUN_RANK
FROM MFC_LDG_FND
WHERE LDG_FND_TYPE = 'MFCLFD';
grant select, update on MFC_LDG_D2K_FND_V to OWN_RECON;
grant select, insert, update, delete on MFC_LDG_D2K_FND_V to USR_LOGGING;
grant select, insert, update on MFC_LDG_D2K_FND_V to USR_RECONCILIATION;


