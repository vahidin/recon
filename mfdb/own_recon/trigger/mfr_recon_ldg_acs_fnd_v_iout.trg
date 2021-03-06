CREATE OR REPLACE TRIGGER MFR_RECON_LDG_ACS_FND_V_IOUT
INSTEAD OF UPDATE ON MFR_RECON_LDG_ACS_FND_V
FOR EACH ROW 
  BEGIN  
    UPDATE MFC_LDG_ACS_FND_V
       SET LDG_FND_COMMENT = :new.LDG_FND_COMMENT,
       		 LDG_FND_SIGN_OFF_FG = :new.LDG_FND_SIGN_OFF_FG,
       		 LDG_FND_BUG_FIX_ITIL_NO = :new.LDG_FND_BUG_FIX_ITIL_NO
     WHERE FND_ID = :old.FND_ID;   
  END;
/

