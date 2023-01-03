
drop table dt_tmp.T1;
create table dt_tmp.T1 
(
	c1 int,
	c2 int,
	c3 char(5)
) primary index (c1);

drop table dt_tmp.T2;
create table dt_tmp.T2
(
	c1 int,
	c4 char(10),
	c5 char(50)
) primary index (c1);


insert into dt_tmp.T1 values ( 1,2,'abcde' );
insert into dt_tmp.T1 values ( 2,2,'abcde' );
insert into dt_tmp.T1 values ( 2,3,'abcde' );
insert into dt_tmp.T1 values ( 3,2,'abcde' );

insert into dt_tmp.T2 values ( 1,'abcdefhij', 'sldkfhskdhfkjsdhfkjhsdk' );
insert into dt_tmp.T2 values ( 1,'aasdaddd', 'sldkfhskdhfkjsdhfkjhsdk' );
insert into dt_tmp.T2 values ( 2,'abcdefhij', 'sldkfhskdhfkjsdhfkjhsdk' );
insert into dt_tmp.T2 values ( 4,'abcdefhij' ,'sldkfhskdhfkjsdhfkjhsdk');
insert into dt_tmp.T2 values ( 5,'abcdefhij','sldkfhskdhfkjsdhfkjhsdk' );




sel c1,min(c2),min(c3),min(c4),min(c5)
from 
(

sel c1,c2,c3,cast (null as varchar (100)) as c4 ,cast (null as varchar (100)) as c5
from dt_tmp.T1 
union 
sel c1,cast (null as integer) as c2,cast (null as varchar (5)) as c3,c4,c5
from dt_tmp.T2 

)x
group by 1

ok




