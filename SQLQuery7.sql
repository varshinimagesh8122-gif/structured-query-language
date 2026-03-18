---condition Statement
--single condition(if,else)
--multiple condition(if,else if,else)
declare @age int
set @age=(select age from student where id=1)
if(@age>18)
select('eligible for voting')
else
select('not eligible for voting')

declare @age int
set @age=20
if(@age>18)
select('eligible for voting')
else
select('not eligible for voting')

---multiple
declare @mark int 
set @mark=(select mark from Students1 where sid=6)
if(@mark>90 and @mark<=100)
select('o grade')
else if(@mark>80 and @mark<=90)
select('a grade')
else if(@mark>60 and @mark<=80)
select('b grade')
else if(@mark>=40 and @mark<=60)
select('c grade')
else if(@mark<40)
select('fail')
else
select ('please check your mark maximum mark is 500')

---case Statement
--condition check(when) and condition true(then)
select *,case when mark>90 and mark<=100 then 'o grade' when mark>80 and mark<=90 then 'a grade' when mark>70 and mark<=80 then'b grade' 
when mark>60 and mark<=70 then'c grade' when mark<50 then'fail' else'please check your mark' end from Students1

----looping Statement(iteration of process)----only while loop
---3 condition
---initial variable declaration(starting point)
---condition checking(ending point)
---increment and Decrement part

declare @i int
set @i=13
while(@i<20)
begin select @i
set @i=@i+1
end

---cursor
---used to display output one by one
---1st declare the variable for the coulumn
---2nd declare cursor
---3rd pass the data to the cursor
---4th open the cursor
---5th fetch data from the cursor
---6th use looping statement
---7th open loop
---8th fetch data from the cursor
---9th close loop
---10th close cursor
---11th rellocate cursor
----types of cursor
--->>static,dynamic,fast_forward ,forward_only
---direction>>>dir should be mention in fetch
---types
--->>>1st,next,prior,last

declare @sid int
declare @name varchar(50)
declare @department varchar(30)
declare @mark int
declare cursor_stu cursor static
for 
select sid,name,department,mark from Students1
open cursor_stu
fetch first from cursor_stu into @sid,@name,@department,@mark
while @@fetch_status=0
begin
select @sid,@name,@department,@mark
fetch next from cursor_stu into @sid,@name,@department,@mark
end
close cursor_stu
deallocate cursor_stu

----dynamic>>>update or delete using cursor in dynamic
declare @sid int
declare @name varchar(50)
declare @department varchar(30)
declare @mark int
declare cursor_stu cursor dynamic
for 
select sid,name,department,mark from Students1
open cursor_stu
fetch first from cursor_stu into @sid,@name,@department,@mark
while @@fetch_status=0
begin
select @sid,@name,@department,@mark
fetch next from cursor_stu into @sid,@name,@department,@mark
end
close cursor_stu
deallocate cursor_stu
----update used only dyname query
declare @sid int
declare @name varchar(50)
declare @department varchar(30)
declare @mark int
declare cursor_stu cursor dynamic
for 
select sid,name,department,mark from Students1 where sid=6
open cursor_stu
fetch first from cursor_stu into @sid,@name,@department,@mark
while @@fetch_status=0
begin
select @sid,@name,@department,@mark
fetch first from cursor_stu into @sid,@name,@department,@mark
update Students1 set name='varshini' where current of cursor_stu
end
close cursor_stu
deallocate cursor_stu
