CREATE OR REPLACE FORCE VIEW MFC_MI_FND_V AS
SELECT 
  FND_ID, 
  STD_FND_COMMENT, 
  STD_FND_MIGR_ERROR, 
  STD_FND_SIGN_OFF_FG, 
  STD_FND_BUG_FIX_ITIL_NO, 
  MIGR_RUN_ID, 
  SRC_ADR_KEY,
  SRC_BP_KEY,
  SRC_CTN_KEY,
  SRC_MACC_KEY,
  SRC_MINSTR_TMPL,
  SRC_MAIL_ACTION,
  SRC_SMP_KEY,
  MATCH_MINSTR,
  TRG_ADR_KEY,
  TRG_BP_KEY,
  TRG_CTN_KEY,
  TRG_MACC_KEY,
  TRG_MINSTR_TMPL,
  TRG_MAIL_ACTION,
  TRG_SMP_KEY,
  RCN_PRCS_ID,
  INHERIT_FND_ID,
  INHERIT_RUN_RANK
FROM MFC_MI_FND;
grant select, update on MFC_MI_FND_V to OWN_RECON;
grant select, insert, update, delete on MFC_MI_FND_V to USR_LOGGING;
grant select, insert, update on MFC_MI_FND_V to USR_RECONCILIATION;


