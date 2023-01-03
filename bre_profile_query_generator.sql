select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_financial_data_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_FINANCIAL_DATA';


select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_financial_data_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_MATERIAL_SALES_NA';


select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_cost_centre_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_COST_CENTRE_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_product_hierarchy_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_PRODUCT_HIERARCHY_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_fiscal_variants_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_FISCAL_VARIANTS_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_operator_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_OPERATOR_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_sales_district_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_SALES_DISTRICT_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_sales_office_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_SALES_OFFICE_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_profit_centre_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_PROFIT_CENTRE_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_customer_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_CUSTOMER_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_company_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_COMPANY_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_sales_org_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_SALES_ORG_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_country_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_COUNTRY_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_material_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_MATERIAL_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_business_group_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_BUSINESS_GROUP_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_division_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_DIVISION_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_touch_point_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_TOUCH_POINT_NA';


select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_region_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_REGION_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_gl_account_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_GL_ACCOUNT_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_plant_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_PLANT_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_customer_account_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_customer_account_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_copa_fields_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_copa_fields_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_customer_group_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_customer_group_NA';

select 'select '||''''||trim(columnname)||'   '||trim(columntype)||'   '||trim(columnlength)||''''
            || ',sum(case when '||trim(columnname)||' is null then 1 else 0 end)  as "Null Count" ' 
            || ',count(distinct  '||trim(columnname)||' ) as "Distinct Values" '
            ||' ,max(length( '||trim(columnname)||')) as "Maximum Length" '
            ||',min(length( '||trim(columnname)||')) as "Miminum Length" ' 
            ||'from dd36_stg_bre.bre_currency_na;' As "Profile Queries"
from dbc.columns where tablename ='BRE_currency_NA';