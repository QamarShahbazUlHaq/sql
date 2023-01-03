SELECT TRIM (c.tablename) AS Target_Table, TRIM (c.columnname ) AS Target_Column,
CASE c.columntype 
	WHEN 'CV' THEN 'VARCHAR ( ' || TRIM (c.columnlength) || ' )' 
	WHEN 'CF'  THEN 'CHAR ( ' || TRIM (c.columnlength) || ' )' 
	WHEN 'TS' THEN 'TIMESTAMP(26)'
	WHEN 'I2' THEN 'SMALLINT '
	WHEN 'DA' THEN 'DATE'
	WHEN 'D' THEN 'DECIMAL(18,5)'
	WHEN 'I' THEN 'INTEGER'
	END AS Data_Type,
CASE c.nullable 
	WHEN  'N' THEN 'NOT NULL'
	WHEN 'Y' THEN 'NULL'
	END AS NullAble,
CASE  
	WHEN i.columnname IS NOT NULL THEN 'Y'
	WHEN i.columnname IS NULL THEN 'N'
	END AS Indexx,
		
	CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN 'REF' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN 'REF' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN 'REF' 
		ELSE '' END  AS   Source_System, 
		
		
	CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN 'REF001' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN 'REF001'
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN 'REF001' 
		ELSE '' END  AS Record_Id, 
	
	CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN Target_Table 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN Target_Table 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN Target_Table 
		ELSE '' END  AS Source_Table ,
	-- SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table))  AS Source_Table
		CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN Target_Column 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN Target_Column 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN Target_Column 
		ELSE '' END  AS Source_Column, 
		
	CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN Data_Type 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN Data_Type 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN Data_Type 
		ELSE '' END  AS  Source_DataType,
		
		CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN 'VERBATIM' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN 'VERBATIM' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN 'VERBATIM'
		ELSE '' END  AS   Transformation_Category,
		CAST ( '' AS VARCHAR (100)) AS Transformation_Rules
FROM  dbc.tables t
INNER JOIN dbc.columns c
ON t.tablename = c.tablename 
--AND t.columnname = c.columnname
AND t.databasename = c.databasename

LEFT JOIN  dbc.indices i
ON c.tablename = i.tablename 
AND c.columnname = i.columnname
AND c.databasename = i.databasename

WHERE t.TableKind = 'T'
AND SUBSTR (t.tableName , 1,3) <> 'TD_'
AND t.databasename = 'DD15_TGT_ADW'
AND c.columnname NOT IN ('Flag','SSI','Ext_Ts')
GROUP BY 1,2,3,4,5

UNION  ALL

SELECT tableName AS Target_Table  , '' AS Target_Column , '' AS Data_Type ,'','z',

CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN 'REF' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN 'REF' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN 'REF' 
		ELSE '' END  AS   Source_System, 
		
		
	CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN 'REF001' 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN 'REF001'
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN 'REF001' 
		ELSE '' END  AS Record_Id, 

CASE WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'TYPE'
	THEN Target_Table 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -3 , LENGTH (Target_Table)) = 'ROLE'
	THEN Target_Table 
	WHEN SUBSTR (Target_Table, LENGTH (Target_Table) -2 , LENGTH (Target_Table)) = 'CAT'
	THEN Target_Table 
		ELSE '' END  AS Source_Table ,
		 '' AS Source_Column, '' AS Source_DataType, '' AS Transformation_Category,
 '+1 OPER_' || TRIM(tableName) || '_KEY' AS Transformation_Rules
FROM dbc.tables
WHERE databasename = 'DD15_TGT_ADW'
AND SUBSTR (tableName , 1,3) <> 'TD_'
AND TableKind = 'T'
order by 1,5 DESC ,2