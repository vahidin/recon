CREATE OR REPLACE FORCE VIEW MFR_RECON_MIG_RUNS_V AS
WITH t AS (
   SELECT 1 FROM dual
   /*
   select bank_run_id, count(*) subchains
                 from mfr_run_chain_v 
                 inner join mfr_migr_run_v20 on member_run_id =  run_id
                 where 
                  wft_class = 'WFT_BNK_RST' 
                 and wft_name in ('RECON_STATIC', 'RECON_POSTRX') 
                 GROUP BY bank_run_id
  */
)
SELECT 
	RUN.FACTORY_NAME,
  MF.FACTORY_EXEC_ENVIRON,
  DOMENV.LONG_NAME FACTORY_EXEC_ENVIRON_LONG,
  MF.IS_RETIRED,
  RUN.RUN_ID,
  RUN.WFT_NAME,
  RUN.WFT_CLASS,
  RUN.BANK_LOCATION_CODE,
  BANK.BANK_NAME,
  RUN.RUN_STATUS,
  DOMRUN.LONG_NAME RUN_STATUS_LONG_NAME,
	RUN.RUN_START_TIME,
  RUN.RUN_END_TIME,
  LPAD(EXTRACT(HOUR FROM (RUN.RUN_END_TIME - RUN.RUN_START_TIME)), 2, '0') || ':' ||
  LPAD(EXTRACT(MINUTE FROM (RUN.RUN_END_TIME - RUN.RUN_START_TIME)), 2, '0') || ':' ||
  LPAD(ROUND(EXTRACT(SECOND FROM (RUN.RUN_END_TIME - RUN.RUN_START_TIME))), 2, '0')   
  AS ELAPSE_TIME,
  TO_NUMBER(RUN.UC4_RUN_ID) UC4_RUN_ID, 
  RUN.WFT_BLD_ID,
  CASE 
    WHEN RUN_ID IN (SELECT MIGR_RUN_ID FROM MFC_MR_RCN_RB_VISIBLE_V)
    THEN '1'
    ELSE '0'
  END AS RB_VISIBLE
  -- t.subchains
FROM MFR_MIGR_RUN_V20 RUN
JOIN MFR_MIGR_FACTORY_V14 MF	      ON MF.FACTORY_NAME = RUN.FACTORY_NAME
JOIN MFR_RAIFFEISEN_BANK_V20 BANK  	ON BANK.BANK_LOCATION_CODE = RUN.BANK_LOCATION_CODE
JOIN MFR_DOM_MIGR_RUN_STAT_V DOMRUN	ON DOMRUN.SHORT_NAME = RUN.RUN_STATUS
JOIN MFR_DOM_EXEC_ENVIRON_V DOMENV	ON DOMENV.SHORT_NAME = MF.FACTORY_EXEC_ENVIRON
-- JOIN t ON t.bank_run_id = run.run_id  
WHERE RUN.WFT_CLASS = 'WFT_BNK_SGL'
  AND RUN.RUN_ID NOT IN (SELECT MEMBER_RUN_ID FROM MFR_RUN_CHAIN_V) -- only top backbone MR, i.e. not a member MR
  AND RUN.RUN_ID IN  -- MR having recon processes and results
  		( SELECT CHN.BANK_RUN_ID 
  			FROM MFR_RUN_CHAIN_V CHN 
    		JOIN MFR_RECON_PROCESS_V PRCS 
    			ON CHN.MEMBER_RUN_ID = PRCS.MIGR_RUN_ID
    		WHERE CHN.BANK_RUN_ID = RUN.RUN_ID
    	)
;

