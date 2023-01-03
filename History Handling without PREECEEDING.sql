create table tgt 
(
p int,
v int,
s date,
e date 
)
primary index (p);

create table stg 
(
p int,
v int,
s date

)
primary index (p);

insert into stg values ( 1,3,'2013-06-01');
insert into stg values ( 1,4,'2013-06-02');
insert into stg values ( 1,4,'2013-06-03');
insert into stg values ( 1,5,'2013-06-04');
insert into stg values ( 1,6,'2013-06-05');
insert into stg values ( 1,6,'2013-06-06');
insert into stg values ( 1,7,'2013-06-07');
insert into stg values ( 1,7,'2013-06-08');
insert into stg values ( 2,7,'2013-06-08');

with tmp (p,v,s,r) as 
(
sel p,v,s, rank () over (partition by p order by s ) as r  from stg 
) 
sel t1.p,t1.v,t1.s
 from tmp t1 
 left  join tmp t2 
 on t1.p = t2.p
 and t1.r = t2.r+1
where t1.v <> t2.v or t2.p is null
order by 1,3;