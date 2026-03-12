create table new(nid int primary key identity(1,1),name varchar(40),phone_no varchar(10),city varchar(50),dob date)
insert into new values('varshini','1234567891','kancheepuram','2005-09-23')
begin tran insert into new values('varshini','1234567891','kancheepuram','2005-09-23')save tran s1
begin tran insert into new values('varshu','9876543212','kilambi','2004-08-12')save tran s2
begin tran insert into new values('varsh','9876324212','krishnapuram','2005-08-14')save tran s3
begin tran insert into new values('nathiya','9567654322','baluchetty','2008-06-13')save tran s4
begin tran insert into new values('sangeetha','9876543234','sirunai','2005-07-23')save tran s5
begin tran insert into new values('sandhiya','5676543234','thulagthandalam','2005-08-27')save tran s6
begin tran insert into new values('chithra','9876543364','kancheepuram','2005-06-15')save tran s7
begin tran insert into new values('shalini','9876549234','ranipet','2004-07-23')save tran s8
begin tran insert into new values('ena','9876524234','ooty','2004-02-08')save tran s9
begin tran insert into new values('narmadha','9876873234','kilar','2004-03-24')save tran s10
begin tran insert into new values('aysha','9873443234','baluchetty','2007-07-23')save tran s11
begin tran insert into new values('keerthana','6576535234','balucheety','2005-07-02')save tran s12
select*from new
update new set name = 'gayathri' 
update new set name = 'geetha' where nid=2
update new set city = 'chennai' where nid in(2,10,6)
update new set city ='bengaluru' where nid between 11 and 12

update new set name = 'geetha' where nid=2
update new set name = 'varshiji' where nid=1
update new set name = 'rashmika' where nid=5
update new set name = 'narmadha' where nid=6
update new set name = 'viji' where nid between 6 and 10

truncate table new
delete from new
delete from new where nid=13
delete from new where nid between 3 and 4
select*from new where nid=12
select name ,city from new 
select*from new


begin tran insert into new values('nathiya','9567654322','baluchetty','2008-06-13')commit
begin tran rollback
begin tran rollback tran s9

alter table department1 add fid int constraint fk_fees foreign key references fees(id)


select*from student inner join department on department.did=student.id
 select student.name,department.d_name from student inner join department on department.did=student.id

 ---joins
 select s.name,d.d_name from student s inner join department d on d.did=s.id

 select s.name,d.d_name from student s left join department d on d.did=s.id
 select s.name,d.d_name from student s right join department d on d.did=s.id
 select s.name,d.d_name from student s full join department d on d.did=s.id
 select s.name,d.d_name from student s cross join department d 

select s.name,d.d_name,f.f_amount from student s inner join department d on d.did=s.did inner join fees f on f.fid=d.fid

---set function
select id,name from student union select did,d_name from department
select id from student union all select did from department
select id from student intersect select did from department
select id from student except select did from department 

