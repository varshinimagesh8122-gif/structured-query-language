lower()
select name,lower(name) from student
--upper()
select name,upper(name) from student
--Ltrim(),trim(),rtrim()--remove the space
select Ltrim('    varshini    ')
select Rtrim('    varshini    ')
select trim('    varshini    ')

--Quotename()-- to put the output in desired phrases,default-->([])
select Quotename(name) from student
select Quotename(name,'""') from student
--Replace-->to replace the character in the table 
select name ,replace(name,'a','b') from student
--Replicate--to make duplicate copy
select name ,replicate(name,2) from student
--Reverse-->used to reverse the values in the table  
select name ,reverse(name) from student
--Concat()--> to concat the table column
select name ,concat (name,age,city) from student
--Concar_ws--> it means concat with separator
select name ,concat_ws ('/',name,age,city) from student
--operators--it used to perform operation using values that are given
--3 operators-->
--arithmetic operators-->it is used for mathematical operations(+,-,*,/,%)
select id,did,(id+did)from student
select id,did,(id-did)from student
select id,did,(id*did)from student
select id,did,(id/did)from student
select id,did,(id%did)from student
--comparison operator-->(=,!=,<>,<,<=,>,>=)
select *from student where id=5
select *from student where id!=5
select *from student where id<>5
select *from student where id<5
select *from student where id<=5
select *from student where id>5
select *from student where id>=5
--Logical operator-->(and,or,in,between,like,not,all,any,some,exists)
select *from student where id=5and name='Vikram'
select *from student where id=5or name='arjun'
select *from student where id in(8,9,10,31)
select *from student where id between 8 and 20

select * from student where name like '%a%'--the name contains the character
select * from student where name like 'a%'--the name start with character
select * from student where name like '%a'--the name end with character
select * from student where name not like '%a'--not is used to negate the conditon 