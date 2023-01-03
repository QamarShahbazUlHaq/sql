SELECT
		 'SELECT '''
	|| TRIM(c.tablename)
	|| ''' (CHAR(30)),'''
	|| TRIM(c.columnname)
	|| ''' (CHAR(30)), '''
	|| CASE WHEN TRIM (C.COLUMNTYPE) = 'D' THEN 'D' || '(' || TRIM (COALESCE (DECIMALTOTALDIGITS, 0)) || ',' || TRIM (COALESCE (DECIMALFRACTIONALDIGITS, 0)) || ')'''
          WHEN TRIM (C.COLUMNTYPE) IN ('TS', 'CF', 'CV', 'I', 'I2') THEN TRIM (C.COLUMNTYPE) || '(' || TRIM(C.COLUMNLENGTH) || ')'''
		 END
	||' (CHAR (100)) AS DTYPE , COUNT (*) RowCount, SUM ( CASE WHEN '
	|| TRIM (c.columnname)
	|| ' IS NULL THEN 1 ELSE 0 END ) AS NullCount, COUNT (DISTINCT '
	|| TRIM (c.columnname)
	|| ') AS DistinctCount, MAX (LENGTH (TRIM ('
	|| CASE WHEN TRIM (C.COLUMNTYPE) = 'TS' THEN 'CAST(' || TRIM(c.columnname) || ' AS VARCHAR (19) ) '
		      WHEN TRIM (C.COLUMNTYPE) IN ('D', 'CF', 'CV', 'I', 'I2') THEN TRIM(c.columnname)
		 END
	|| '))) AS MaxLength, MIN (LENGTH ( TRIM ( '
	|| CASE WHEN TRIM (C.COLUMNTYPE) = 'TS' THEN 'CAST(' || TRIM(c.columnname) || ' AS VARCHAR (19) ) '
		      WHEN TRIM (C.COLUMNTYPE) IN ('D', 'CF', 'CV', 'I', 'I2') THEN TRIM(c.columnname)
		 END
	|| '))) AS MinLength, CASE WHEN RowCount = DistinctCount THEN ''Y'' ELSE ''N'' END AS IsPK FROM '
	|| TRIM(c.databasename)
	|| '.'
	|| TRIM(c.tablename)
	|| ' UNION'
FROM
	dbc.tables t
INNER JOIN
	dbc.COLUMNS  c
ON TRIM(c.databasename) = TRIM (t.databasename)
AND	TRIM (c.tablename) = TRIM (t.tablename)
WHERE t.DATABASENAME = 'DD36_STG_BRE'
AND TRIM (T.TABLENAME ) NOT LIKE '%ALL%' AND TRIM (T.TABLENAME ) NOT LIKE '%NA' AND TRIM (T.TABLENAME ) NOT LIKE 'UV%'
AND TRIM (C.COLUMNNAME) NOT IN ('ACTIVITY_TYPE', 'EXT_TS', 'SSI')
AND TRIM (C.COLUMNNAME) NOT LIKE '%FEED_SENT_ID'
AND	t.tablekind='t'
ORDER BY T.TABLENAME, C.COLUMNNAME;
