create table t 
(
c1 int ,
c2 int ,
c3 int 
) primary index (c1)

insert into t values (	100		,	1	,	0	);
insert into t values (	100		,	2	,	7	);
insert into t values (	100		,	3	,	7	);
insert into t values (	100		,	4	,	0	);
insert into t values (	101		,	1	,	0	);
insert into t values (	101		,	2	,	7	);
insert into t values (	101		,	3	,	0	);
insert into t values (	101		,	4	,	7	);
insert into t values (	102		,	1	,	7	);
insert into t values (	102		,	2	,	7	);
insert into t values (	102		,	3	,	7	);
insert into t values (	102		,	4	,	0	);

select c1,
       c2,
       c3,
       sum(c3) over (partition by c1 order by c2 RESET WHEN c3=0  rows unbounded preceding ) as running_sum
from t
order by c1, c2;