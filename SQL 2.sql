create table department(did int primary key identity(1,1),d_name varchar(30))
insert into department values('information tech')
insert into department values('electrical')
insert into department values('electronics')
insert into department values('civil')
insert into department values('artificial')
insert into department values('mech')
insert into department values('cyber security')
insert into department values('chemical')
insert into department values('data science')
insert into department values('computer science')
select*from department

create table fees2(fid int primary key identity(1,1),f_amount int)
insert into fees2 values(25000)
insert into fees2 values(35000)
insert into fees2 values(65000)
insert into fees2 values(27000)
insert into fees2 values(25000)
insert into fees2 values(25000)
insert into fees2 values(32000)
insert into fees2 values(23000)
insert into fees2 values(12000)
insert into fees2 values(43000)
select*from fees2

create table cons6(sid int primary key identity(1,1),name varchar(50) not null, ph_no bigint unique,
mail varchar(30) constraint uq_mail6 unique,city varchar(50) constraint df_city6 default 'chennai',
age int constraint ck_age6 check(age>18))

select*from cons6

insert into cons6 values('kishor',8122152309,'varshinimagesh8122@gmail.com','landon',19)
insert into cons6 values('kannan',4312152309,'kishorm8122@gmail.com','usa',21)
insert into cons6 (name,ph_no,mail,city,age)values('nirmal',3243896767,'nirmal@gmail.com','kalathur',32)
insert into cons6 (name,ph_no,mail,age)values('madhesh',3243896567,'madhell@gmail.com',42)

alter table cons6 drop constraint[uq_mail6],[UQ__cons6__C4BE8D8E90333BBF],[ck_age6],[df_city6]

 alter table student add did int constraint fk_deparment foreign key references student(id)
 update student set did=2 where id in (3,6,9,12)
 update student set did=5 where id in (1,5,7,11)
 update student set did=3 where id in (2,4,8,10)
 update student set did=4 where id in (13,15,17,18)
 update student set did=6 where id in (14,16,19,20)
 select*from student

 alter table department add fid int constraint fk_fees2 foreign key references fees2(fid)
 update department set fid=2 where did in(2,3,1)
 update department set fid=4 where did in(4,5,6)
 update department set fid=7 where did in(7,8,9) 

 select*from student,department