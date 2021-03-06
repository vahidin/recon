CREATE OR REPLACE FORCE VIEW MFR_RECON_MACC_TMN_FND_V
(fnd_id, std_fnd_comment, std_fnd_migr_error, std_fnd_sign_off_fg, std_fnd_bug_fix_itil_no, migr_run_id, rcn_prcs_id, macc_key, cum_match_client_base, src_client_id, trg_client_id, match_client_id, src_ctn_key, trg_ctn_key, match_ctn_key, src_iban, trg_iban, match_iban, src_xtrnl_key, trg_xtrnl_key, match_xtrnl_key, cum_match_account, src_product_key, trg_product_key, match_product_key, src_create_dt, trg_create_dt, match_create_dt, src_ref_currency, trg_ref_currency, match_ref_currency, cum_match_blocking, src_block_cnt, trg_block_cnt, match_block_cnt, src_block_detail, trg_block_detail, match_block_detail, cum_match_cost_fee, src_cost_fee_cnt, trg_cost_fee_cnt, match_cost_fee_cnt, src_cost_fee_detail, trg_cost_fee_detail, match_cost_fee_detail, cum_match_interest, src_dbt_graduate_ntrst, trg_dbt_graduate_ntrst, match_dbt_graduate_ntrst, src_crdt_graduate_ntrst, trg_crdt_graduate_ntrst, match_crdt_graduate_ntrst, rcn_prgm_name, rcn_scope_type, inherit_fnd_id, inherit_run_rank)
AS
SELECT 
  FND.FND_ID,
  FND.STD_FND_COMMENT,
  FND.STD_FND_MIGR_ERROR, 
  FND.STD_FND_SIGN_OFF_FG, 
  FND.STD_FND_BUG_FIX_ITIL_NO,
  FND.MIGR_RUN_ID,
  FND.RCN_PRCS_ID,
  FND.MACC_KEY,
  
  CASE 
  WHEN FND.MATCH_CLIENT_ID = 'OK' AND 
       FND.MATCH_CTN_KEY = 'OK' AND
       FND.MATCH_IBAN = 'OK'  AND
       FND.MATCH_XTRNL_KEY = 'OK' 
  THEN 'OK'
  ELSE 'NOK'
  END AS CUM_MATCH_CLIENT_BASE,
  
  FND.SRC_CLIENT_ID,
  FND.TRG_CLIENT_ID,
  FND.MATCH_CLIENT_ID,
  FND.SRC_CTN_KEY,
  FND.TRG_CTN_KEY,
  FND.MATCH_CTN_KEY,
  FND.SRC_IBAN,
  FND.TRG_IBAN,
  FND.MATCH_IBAN,
  FND.SRC_XTRNL_KEY,
  FND.TRG_XTRNL_KEY,
  FND.MATCH_XTRNL_KEY,
  
  CASE 
  WHEN FND.MATCH_PRODUCT_KEY = 'OK' AND 
       FND.MATCH_CREATE_DT = 'OK' AND
       FND.MATCH_REF_CURRENCY = 'OK' 
  THEN 'OK'
  ELSE 'NOK'
  END AS CUM_MATCH_ACCOUNT,

  FND.SRC_PRODUCT_KEY,
  FND.TRG_PRODUCT_KEY,
  FND.MATCH_PRODUCT_KEY,
  FND.SRC_CREATE_DT,
  FND.TRG_CREATE_DT,
  FND.MATCH_CREATE_DT,
  FND.SRC_REF_CURRENCY,
  FND.TRG_REF_CURRENCY,
  FND.MATCH_REF_CURRENCY,

  CASE 
  WHEN FND.MATCH_BLOCK_CNT = 'OK' AND 
       FND.MATCH_BLOCK_DETAIL = 'OK' 
  THEN 'OK'
  ELSE 'NOK'
  END AS CUM_MATCH_BLOCKING,
  
  FND.SRC_BLOCK_CNT,
  FND.TRG_BLOCK_CNT,
  FND.MATCH_BLOCK_CNT,
  FND.SRC_BLOCK_DETAIL,
  FND.TRG_BLOCK_DETAIL,
  FND.MATCH_BLOCK_DETAIL,
  
  CASE 
  WHEN FND.MATCH_COST_FEE_CNT = 'OK' AND 
       FND.MATCH_COST_FEE_DETAIL = 'OK' 
  THEN 'OK'
  ELSE 'NOK'
  END AS CUM_MATCH_COST_FEE,
  
  FND.SRC_COST_FEE_CNT,
  FND.TRG_COST_FEE_CNT,
  FND.MATCH_COST_FEE_CNT,
  FND.SRC_COST_FEE_DETAIL,
  FND.TRG_COST_FEE_DETAIL,
  FND.MATCH_COST_FEE_DETAIL,

  CASE 
  WHEN FND.MATCH_DBT_GRADUATE_NTRST = 'OK' AND 
       FND.MATCH_CRDT_GRADUATE_NTRST = 'OK' 
  THEN 'OK'
  ELSE 'NOK'
  END AS CUM_MATCH_INTEREST,

  FND.SRC_DBT_GRADUATE_NTRST,
  FND.TRG_DBT_GRADUATE_NTRST,
  FND.MATCH_DBT_GRADUATE_NTRST,
  FND.SRC_CRDT_GRADUATE_NTRST,
  FND.TRG_CRDT_GRADUATE_NTRST,
  FND.MATCH_CRDT_GRADUATE_NTRST,

  PRCS.RCN_PRGM_NAME,
  PRCS.RCN_SCOPE_TYP,
  FND.INHERIT_FND_ID,
  FND.INHERIT_RUN_RANK
FROM MFC_MACC_TMN_FND_V FND
JOIN MFC_RCN_PRCS_V PRCS 
  ON FND.RCN_PRCS_ID = PRCS.RCN_PRCS_ID;

