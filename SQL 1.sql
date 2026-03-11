create database sql2
create table first(fid int,name varchar(40),age int)
drop table table_1
insert into first values(1,'varshini',20)
select*from first
insert into first (fid,name)values( 3,'vasa')
insert into first (name,age)values('varsh',21)
insert into first values(5,'vasanth',24)

create table second(fid int primary key,name varchar(50),age int)
insert into second values(1,'varshini',20)
insert into second (name,age) values('varsh',20)
insert into second (fid,name) values (2,'varshu')
select*from second

create table third(fid int primary key identity(1,1),name char(40),age int)
insert into third values('varshini',20)
insert into third values('vasanth',24),('vaisu',20),('sakthi',24)
alter table third alter column name varchar(100)
select*from third
alter table third alter column age bigint
alter table third add city varchar(60)
alter table third drop column city

create table student(id int primary key identity(1,1),name varchar(50),ph_no varchar(10),age int,city varchar(60))
insert into student values ('varshini',8122152309,20,'kancheepuram')
insert into student values ('vasanth',8122342309,25,'kancheepuram')
insert into student values ('nithya',4212152309,34,'chennai')
insert into student values ('seetha',8903152789,45,'baluchetty')
insert into student values ('narmadha',6753152309,20,'vellore')
insert into student values ('sangeetha',9756152365,25,'madurai')
insert into student values ('shalini',6342152309,42,'thambaram')
insert into student values ('chithra',8122157824,20,'walajabath')
insert into student values ('vinothini',4522152309,33,'kancheepuram')
insert into student values ('umash',457452439,54,'ooty')
insert into student values ('nagaraj',6522152378,60,'perambalur')
insert into student values ('sendhil',742452309,56,'sirunai')
insert into student values ('saranya',6752156709,54,'baluchetty')
insert into student values ('mahalakshmi',5643242367,23,'chennai')
insert into student values ('gayathri',7645152309,32,'cheyyar')
insert into student values ('geetha',7422152679,65,'vandhavasi')
insert into student values ('suganya',7232152354,65,'bengaluru')
insert into student values ('selvam',5672152354,75,'kanada')
insert into student values ('pooja',7844152309,22,'selam')
insert into student values ('bhuvana',762352309,53,'kalavai')
insert into student values ('malini',8122157634,64,'ranipet')
insert into student values ('raj',8122154359,40,'arcot')
insert into student values ('ambika',8544352309,52,'kanchi')
insert into student values ('vani',7652152378,43,'andhra')
insert into student values ('govid',6589152309,19,'madras')
insert into student values ('kalai',7866152308,44,'anna nagar')
insert into student values ('kavin',9675152309,82,'kelambi')
insert into student values ('deepa',9675152309,44,'ooty')
insert into student values ('prem',7656152309,52,'mysore')
insert into student values ('maya',2345326587,43,'coimbatore')
select*from student

