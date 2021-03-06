CREATE OR REPLACE FORCE VIEW MFC_POS_TMN_FND_V AS
SELECT 
  FND_ID, 
  CLIENT_ID, 
  POS_KEY, 
  POS_TYPE, 
  SRC_POS_PRODUCT, 
  SRC_ASSET_NAME, 
  SRC_ASSET_PRICE, 
  SRC_POS_CURR_CD, 
  SRC_POS_AMOUNT, 
  SRC_POS_VALUE_POS_CURR, 
  SRC_EXCH_RATE, 
  SRC_POS_VALUE_CHF, 
  SRC_INTEREST_RATE, 
  SRC_CUM_INTEREST, 
  SRC_DEBIT_INTEREST_RATE, 
  SRC_CUM_DEBIT_INTEREST, 
  SRC_INTEREST_FLOW_FRQ_PYR, 
  SRC_INTEREST_USAGE, 
  SRC_ACQUIRE_DT, 
  SRC_TERM_START_DT, 
  SRC_TERM_END_DT, 
  SRC_DEPOSITARY, 
  SRC_PAYBACK_TYPE, 
  SRC_PAYBACK_AMOUNT, 
  SRC_PAYBACK_PER_YEAR, 
  SRC_POS_AMOUNT_BLOCKED,
  SRC_POS_BLOCKING_CD,
  SRC_CONTRACT_AMOUNT,
  SRC_LENDING_VALUE,
  SRC_LAND_AREA,
  SRC_POS_BUY_CURR_CD,
  SRC_POS_BUY_AMOUNT,
  SRC_POS_SELL_CURR_CD,
  SRC_POS_SELL_AMOUNT,
  SRC_CUT_OFF_DT,
  SRC_ACCR_INTEREST_START_DT,
  SRC_ACCR_INTEREST_END_DT,
  SRC_FST_CALENDAR_DT_LST,
  SRC_SND_CALENDAR_DT_LST,
  SRC_CALENDAR_DT_MSG,
  TRG_POS_PRODUCT, 
  TRG_ASSET_NAME, 
  TRG_ASSET_PRICE, 
  TRG_POS_CURR_CD, 
  TRG_POS_AMOUNT, 
  TRG_POS_VALUE_POS_CURR, 
  TRG_EXCH_RATE, 
  TRG_POS_VALUE_CHF, 
  TRG_INTEREST_RATE, 
  TRG_CUM_INTEREST, 
  TRG_DEBIT_INTEREST_RATE, 
  TRG_CUM_DEBIT_INTEREST, 
  TRG_INTEREST_FLOW_FRQ_PYR, 
  TRG_INTEREST_USAGE, 
  TRG_ACQUIRE_DT, 
  TRG_TERM_START_DT, 
  TRG_TERM_END_DT, 
  TRG_DEPOSITARY, 
  TRG_PAYBACK_TYPE, 
  TRG_PAYBACK_AMOUNT, 
  TRG_PAYBACK_PER_YEAR, 
  TRG_POS_AMOUNT_BLOCKED,
  TRG_POS_BLOCKING_CD,
  TRG_CONTRACT_AMOUNT,
  TRG_LENDING_VALUE,
  TRG_LAND_AREA,
  TRG_POS_BUY_CURR_CD,
  TRG_POS_BUY_AMOUNT,
  TRG_POS_SELL_CURR_CD,
  TRG_POS_SELL_AMOUNT,
  TRG_CUT_OFF_DT,
  TRG_ACCR_INTEREST_START_DT,
  TRG_ACCR_INTEREST_END_DT,
  TRG_FST_CALENDAR_DT_LST,
  TRG_SND_CALENDAR_DT_LST,
  TRG_CALENDAR_DT_MSG,
  TRG_POS_AMOUNT - SRC_POS_AMOUNT                    AS DIFF_POS_AMOUNT_TMS,
  TRG_POS_VALUE_POS_CURR - SRC_POS_VALUE_POS_CURR    AS DIFF_POS_VALUE_POS_CURR_TMS,
  TRG_POS_VALUE_CHF - SRC_POS_VALUE_CHF              AS DIFF_POS_VALUE_CHF_TMS,
  TRG_INTEREST_RATE - SRC_INTEREST_RATE              AS DIFF_INTEREST_RATE_TMS,
  TRG_DEBIT_INTEREST_RATE - SRC_DEBIT_INTEREST_RATE  AS DIFF_DEBIT_INTEREST_RATE_TMS,
  TRG_CUM_INTEREST - SRC_CUM_INTEREST                AS DIFF_CUM_INTEREST_TMS,
  TRG_CUM_DEBIT_INTEREST - SRC_CUM_DEBIT_INTEREST    AS DIFF_CUM_DEBIT_INTEREST_TMS,
  TRG_PAYBACK_AMOUNT - SRC_PAYBACK_AMOUNT            AS DIFF_PAYBACK_AMOUNT_TMS,
  TRG_POS_BUY_AMOUNT - SRC_POS_BUY_AMOUNT            AS DIFF_POS_BUY_AMOUNT_TMS,
  TRG_POS_SELL_AMOUNT - SRC_POS_SELL_AMOUNT          AS DIFF_POS_SELL_AMOUNT_TMS,
  POS_FND_COMMENT, 
  POS_FND_MIGR_ERROR,
  POS_FND_SIGN_OFF_FG, 
  POS_FND_BUG_FIX_ITIL_NO,
  MATCH_POS_CURR_CD, 
  MATCH_POS_AMOUNT, 
  MATCH_POS_VALUE_POS_CURR, 
  MATCH_POS_VALUE_CHF, 
  MATCH_INTEREST_RATE,
  MATCH_DEBIT_INTEREST_RATE,
  MATCH_CUM_INTEREST, 
  MATCH_CUM_DEBIT_INTEREST, 
  MATCH_ACQUIRE_DT,
  MATCH_PAYBACK_AMOUNT,
  MATCH_POS_BUY_CURR_CD,
  MATCH_POS_BUY_AMOUNT,
  MATCH_POS_SELL_CURR_CD,
  MATCH_POS_SELL_AMOUNT,
  MATCH_FST_CALENDAR_DT_LST,
  MATCH_SND_CALENDAR_DT_LST,
  MIGR_RUN_ID, 
  RCN_PRCS_ID,
  INHERIT_FND_ID,
  INHERIT_RUN_RANK 
FROM MFC_POS_TMN_FND FND;
grant select, update on MFC_POS_TMN_FND_V to OWN_RECON;
grant select, insert, update, delete on MFC_POS_TMN_FND_V to USR_LOGGING;
grant select, insert, update on MFC_POS_TMN_FND_V to USR_RECONCILIATION;


