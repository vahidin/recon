CREATE OR REPLACE TRIGGER MFC_RCN_SCP_V_IOUT
INSTEAD OF UPDATE ON MFC_RCN_SCP_V
FOR EACH ROW 
  BEGIN  
    UPDATE MFC_RCN_SCP
       SET RCN_SCOPE_RB_VISIBLE_FG = :new.RCN_SCOPE_RB_VISIBLE_FG
     WHERE RCN_SCOPE_TYP = :old.RCN_SCOPE_TYP;   
  END;
/

