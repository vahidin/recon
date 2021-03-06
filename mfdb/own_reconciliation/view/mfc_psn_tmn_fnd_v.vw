CREATE OR REPLACE FORCE VIEW MFC_PSN_TMN_FND_V AS
SELECT 
  FND_ID,
  STD_FND_COMMENT,
  STD_FND_MIGR_ERROR,
  STD_FND_SIGN_OFF_FG,
  STD_FND_BUG_FIX_ITIL_NO,
  MIGR_RUN_ID,
  PSN_KEY,
  SRC_CLIENT_TYPE,
  TRG_CLIENT_TYPE,
  MATCH_CLIENT_TYPE,
  SRC_CLIENT_NM,
  TRG_CLIENT_NM,
  MATCH_CLIENT_NM,
  SRC_NATION_CNTRY_CD,
  TRG_NATION_CNTRY_CD,
  MATCH_NATION_CNTRY_CD,
  SRC_SNB_NM,
  TRG_SNB_NM,
  MATCH_SNB_NM,
  SRC_BUS_CONNECT_TYPE,
  TRG_BUS_CONNECT_TYPE,
  MATCH_BUS_CONNECT_TYPE,
  SRC_PRSN_IDENT_CNT,
  TRG_PRSN_IDENT_CNT,
  MATCH_PRSN_IDENT_CNT,
  SRC_PRSN_IDENT_LST,
  TRG_PRSN_IDENT_LST,
  MATCH_PRSN_IDENT_LST,
  SRC_PRSN_REL_PEP_DAP_CNT,
  TRG_PRSN_REL_PEP_DAP_CNT,
  MATCH_PRSN_REL_PEP_DAP_CNT,
  SRC_PRSN_REL_PEP_DAP_LST,
  TRG_PRSN_REL_PEP_DAP_LST,
  MATCH_PRSN_REL_PEP_DAP_LST,
  SRC_PRSN_REL_RSPNSBL,
  TRG_PRSN_REL_RSPNSBL,
  MATCH_PRSN_REL_RSPNSBL,
  SRC_DCMNT_CNT,
  TRG_DCMNT_CNT,
  MATCH_DCMNT_CNT,
  SRC_DCMNT_LST,
  TRG_DCMNT_LST,
  MATCH_DCMNT_LST,
  RCN_PRCS_ID,
  INHERIT_FND_ID,
  INHERIT_RUN_RANK
FROM MFC_PSN_TMN_FND;
grant select, update on MFC_PSN_TMN_FND_V to OWN_RECON;
grant select, insert, update, delete on MFC_PSN_TMN_FND_V to USR_LOGGING;
grant select, insert, update on MFC_PSN_TMN_FND_V to USR_RECONCILIATION;


