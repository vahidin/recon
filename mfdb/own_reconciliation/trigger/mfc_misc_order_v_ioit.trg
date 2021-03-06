CREATE OR REPLACE TRIGGER MFC_MISC_ORDER_V_IOIT
INSTEAD OF INSERT ON MFC_MISC_ORDER_V
FOR EACH ROW 
  BEGIN  
    INSERT INTO MFC_MISC_ORDER
    ( ORDER_ID,
      BANK_LOCATION_CODE,
      INSPECT_ORDER,
    	EXPECTED_RESULT
    ) VALUES 
    ( MFC_MISC_ORDER_ORDER_ID_SEQ.NEXTVAL, 
      :new.BANK_LOCATION_CODE,
      :new.INSPECT_ORDER,
    	:new.EXPECTED_RESULT
    );   
  END;
/

