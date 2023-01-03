﻿SEL DATABASENAME
, TABLENAME
, TABLEKIND
FROM DBC.TABLES
WHERE TABLEKIND IN ('V','M')
AND 
( 
REQUESTTEXT (NOT CS) LIKE '%DP_VEDW.NON_UNIQ_ITEM_INST%' (NOT CS)
OR REQUESTTEXT (NOT CS) LIKE '%DP_TGT_ADW.NON_UNIQ_ITEM_INST%' (NOT CS)
)
--AND REQUESTTEXT (NOT CS) LIKE '%First_Return_Dt%' (NOT CS)
AND 
UPPER(SUBSTR(TRIM(BOTH FROM TABLENAME), LENGTH (TRIM(BOTH FROM TABLENAME))-3,4)) (CS)
!= LOWER(SUBSTR(TRIM(BOTH FROM TABLENAME), LENGTH (TRIM(BOTH FROM TABLENAME))-3,4)) (CS) 
ORDER BY 1, 3,2


