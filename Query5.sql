 
----main query,sub querry
---all
select*from student where did=all(select did from department where d_name='electrical')
select*from student where did=all(select did from department where d_name='comercial')
select*from student where did=all(select did from department where d_name='information tech')
select*from student where did=all(select did from department where d_name in('electronic','civil'))---does not support multiple 
---any
select*from student where did=any(select did from department where d_name='electrical')
select*from student where did=any(select did from department where d_name='comercial')
select*from student where did=any(select did from department where d_name='information tech')
select*from student where did=any(select did from department where d_name in('electronic','civil'))
---some
select*from student where did=some(select did from department where d_name='electrical')
select*from student where did=some(select did from department where d_name='comercial')
select*from student where did=some(select did from department where d_name='information tech')
select*from student where did=some(select did from department where d_name in('electronic','civil'))
--exists
select*from student where exists(select did from department where d_name in('electrical','civil'))
select*from student where exists(select did from department where d_name='electrical')
select*from student where exists(select did from department where d_name='comercial')
select*from student where exists(select did from department where d_name='information tech')

create table Students1(sid int primary key identity(1,1),name varchar(50),department varchar(30),
mark int);
select * from Students1;
insert into Students1 values('karthik','it',80)
insert into Students1 values('priya','cse',75)
insert into Students1 values('anu','eee',76)
insert into Students1 values('latha','ece',70)
insert into Students1 values('arun','mech',79)
insert into Students1 values('priyanka','it',86)
insert into Students1 values('rishi','ece',90)
insert into Students1 values('varshini','eee',89)
insert into Students1 values('hari','mech',75)
insert into Students1 values('tharun','it',92)
insert into Students1 values('vishnu','mba',68)
insert into Students1 values('sakthi','it',95)
insert into Students1 values('vicky','cse',87)
insert into Students1 values('ravi','eee',72)
insert into Students1 values('haripriya','mba',64)
insert into Students1 values('banu','ece',79)
insert into Students1 values('vasanth','eee',84)
insert into Students1 values('lakshmi','cse',82)
insert into Students1 values('kaveri','ece',81)
insert into Students1 values('rithika','it',90)
insert into Students1 values('shreemathi','cse',85)
insert into Students1 values('monika','mba',88)
insert into Students1 values('nadhini','eee',91)
insert into Students1 values('jeeva','mech',65)
insert into Students1 values('sangeetha','cse',90)
insert into Students1 values('vignesh','eee',67)
insert into Students1 values('vinoth','mba',90)
insert into Students1 values('geetha','ece',61)
insert into Students1 values('naveen','mech',69)
insert into Students1 values('keerthi','cse',73)

---1st row-number() ---like a serial number
---2nd rank()
---3rd dense_rank()
---4th ntile()

----row_number()
select*,row_number()over(order by mark)from student1
select*,row_number()over(order by mark desc)from student1
select*,row_number()over(partition by department order by mark)from student1
select*,row_number()over(partition by mark order by mark)from student1
--rank()
select*,rank() over(order by mark desc)from student1
select*,rank() over(order by mark desc)from student1
---dense_rank()
select*,dense_rank() over(order by mark desc)from student1
---ntile()
select*,ntile(5) over(order by mark desc)from student1

with cte_mark as (select*,dense_rank() over(order by mark desc)as result from students1)
select result,count(sid)from cte_mark group by result

---table variable (declaring-variable-datatype)
--virtual table created
--->>>run declare to select line because it cannot run single line or insert line
---does not have primary key identity key

declare @sample table(id int,name varchar(40),ph_no bigint)
insert into @sample values(1,'naresh',8245810256)
select*from @sample

update @sample set ph_no=8122121267
select*from @sample

---temp table--#symbol for (local temp table),## for(global temp table)
--->>>temporary table
---automaticaly store >>>system database >> tempdb

--#local temp table
create table #sample1(id int primary key identity(1,1),name varchar(40),city varchar(40),ph_no bigint)
insert into #sample1 values('santhose','neyveli',2312433212)
insert into #sample1 values('nirmal','neyveli',2313233212)
select*from #sample1

---#global temp table
create table ##sample1(id int primary key identity(1,1),name varchar(40),city varchar(40),ph_no bigint)
insert into ##sample1 values('santhose','neyveli',2312433212)
insert into ##sample1 values('nirmal','neyveli',2313233212)
select*from ##sample1
