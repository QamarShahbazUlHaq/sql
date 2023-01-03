SELECT 'select '||''''||TRIM(columnname) || '''  AS ColumnName, '''||TRIM(columntype) ||' '' AS DataType ,''' || TRIM(columnlength) ||' ''AS DataTypePrecision '
            || ',sum(case when '||TRIM(columnname)||' is null then 1 else 0 end)  as NullCount ' 
            || ',count(distinct  '||TRIM(columnname)||' ) as DistinctValues '
            || CASE WHEN TRIM(columntype)  = 'TS' THEN ' , 0 as MaximumLength'  ELSE ', max(length( '||TRIM(columnname)||')) as MaximumLength  ' END
            || CASE WHEN TRIM(columntype)  = 'TS' THEN ' , 0 as MiminumLength'  ELSE ', min(length( '||TRIM(columnname)||')) as MiminumLength  ' END
--            ||', case when DataType = ''TS'' then 0 else  min(length( '||TRIM(columnname)||')) end as MiminumLength ' 
            ||' from D_MES_DELIVERY_TEST.ITEM_INST_2 UNION ALL' AS "Profile Queries"
FROM dbc.COLUMNS WHERE tablename ='ITEM_INST_2';
