--top clause
select top(5)*from student

--sorting  

select*from student order by name
select*from student order by age
select*from student order by name desc

--distinct
select distinct(city) from student

--function or methods
----in built function
--aggregate function

select avg(f_amount)from fees2
select count(f_amount)from fees2
select max(f_amount)from fees2
select min(f_amount)from fees2

--date,time function

select current_timestamp
select getdate()
select getutcdate()
select sysdatetime()
select sysdatetimeoffset()
select sysutcdatetime()
select dateadd(year,6,getdate())
select dateadd(yyyy,6,getdate())
select dateadd(yy,6,getdate())

--quarter,qq,q
--month,mm,m
--week,ww,wk
--dayofyear,dy,y
--day,dd,d
--weekday,dw,w
--hour,hh
--minute,mi,n
--second,ss,s
--millisecond,ms


--date,time funtion
select datediff(year,'20050923',getdate())
select datediff(year,'20011115',getdate())

select datename(year,getdate())
select datepart(year,getdate())
select datepart(month,getdate())
select datename(month,getdate())

select datepart(weekday,getdate())
select datename(weekday,getdate())
select datepart(dayofyear,getdate())
select datepart(weekday,getdate())
select datepart(day,getdate())

select datename(dayofyear,getdate())
select datename(weekday,getdate())
select datename(day,getdate())

select day(getdate())
select month(getdate())
select year(getdate())
--check date 
select isdate('20260228')

--string funtion
select name,ascii(name) from student

select char(97)
select name,charindex('s',name) from student
select name,charindex('s',name,2) from student
select name,left(name,3) from student
select name,right(name,3) from student

---substring
select name,substring(name,3,5) from student
---length
select name,len(name)from student
select name,datalength(name)from student
select len('     varshini     ')
select datalength('     varshini    ')