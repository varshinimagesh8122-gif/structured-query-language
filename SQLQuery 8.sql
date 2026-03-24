---user defined function
--1st scalar   function
--2nd inline table valued function
--3rd multi table valued function
--scalar   function --output in single cell
--inline table valued function --
--static/empty
create function scal_fun()--(create)
returns varchar(50)
as begin
return (select mark from Students1 where sid=8)
end
select dbo.scal_fun()

--parameter
create function scal_fun1(@sid int)
returns varchar(50)
as begin
return (select mark from Students1 where sid=@sid)
end
select dbo.scal_fun1(2)

--inline table
create function inline_fun()
returns table
as
return select *from Students1
select *from inline_fun()

--multi table
create function multi_fun1()
returns @result table (sid int,name varchar(50),department varchar(50),mark int,result varchar(50))
as begin
insert into @result (sid,name,department,mark)
select sid,name,department,mark from Students1
return
end
select*from multi_fun1()

create function multi_fun1()
returns @result table (sid int,name varchar(50),department varchar(50),mark int,result varchar(50))
as begin
insert into @result (sid,name,department,mark)
select sid,name,department,mark from Students1
update @result set result='pass'
return
end

create function scal_fun2()
returns varchar(50)
as begin
return(select concat_ws('_',name,department,mark)from Students1 where sid=8)
end
select dbo.scal_fun2()

---view
--types>>-simple view(single table) ,complex view(multiple table)
create view simple_view as 
select*from student
select*from simple_view

alter view simple_view as 
select name as result1,ph_no as result2 from student
select*from simple_view

create view complex_view as 
select from student s inner join department d on d.did=s.sid


create view complex_view as 
select s.name as result1,d.d_name as result2 from student s inner join department d on d.did=s.did
select*from complex_view

exec sp_helptext simple_view

alter view simple_view with encryption as
select name as result1,ph_no as result2 from student
select*from simple_view

---schemabinding-->>it is a keyword help not to delete or modify the table or data

alter view simple_view with encryption,schemabinding as
select name as result1,ph_no as result2 from dbo.student
select*from simple_view

drop table student

alter view complex_view with encryption,schemabinding as
select name as result1,ph_no as result2 from dbo.student
select*from complex_view
---trigger
---2 types>>>>ddl trigger,
--used to (no one alter,create,modify table)no action perform
---dml trigger
---(it perform another action while doing a action)

create trigger ddl_trig1 on database
for 
create_table,alter_table,drop_table,create_function
as print'you are not able to create alter drop tables in this database'
rollback

create table trig1(id int,name varchar(40),department varchar(50),mark int,msg varchar(100),ins_date datetime)
create trigger ins_trig on Students1
after insert as begin
insert into trig1
select sid,name,department,mark,'the student is graduated',getdate() from inserted
end
select*from trig1

select*from Students1

alter trigger ins_trig on Students1
instead of insert as begin
insert into trig1
select sid,name,department,mark,'the student is graduated',getdate() from inserted
end
insert into Students1 values('vanav','cse',87)
insert into Students1 values('vishnu','cse',67)


---update
create trigger upd_trig1 on Students1
after update as begin
insert into trig1
select sid,name,department,mark,'the student is graduated',getdate() from inserted
end

update Students1 set name = 'sankar' where sid=29
select*from Students1


alter trigger upd_trig1 on Students1
instead of update as begin
insert into trig1
select sid,name,department,mark,'the student is graduated',getdate() from inserted
end

update Students1 set name = 'raja' where sid=30
select*from Students1
  
---delete

create trigger del_trig1 on Students1
after delete as begin
insert into trig1
select sid,name,department,mark,'the student is graduated',getdate() from inserted
end
select*from Students1

delete from Students1 where sid=29
select*from trig1

----stored procedure
---used to set of querry(for reusability,accuracy)