
--rank,dense_rank,row_number---


select * from mam;
select *,ROW_NUMBER() over (order by salary desc) as new_row from mam;
select *,rank() over (order by salary desc) as new_rank from emp;
select *,dense_rank() over (order by salary desc) as new_rank from emp;

select *,ROW_NUMBER() over (order by salary desc) as new_row from mam,rank() over (order by salary desc) as new_rank from emp,dense_rank() over (order by salary desc) as new_rank from emp;


with new_table1 as
(select *,dense_rank() over (order by salary desc) as new_rank from emp)
select * from new_table1 where new_rank='2';


with aniket as
(select *,dense_rank() over (order by salary desc) as new_rank from emp)
select * from aniket where new_rank='2';

with aniket as
(select *,dense_rank() over (order by salary asc) as new_rank from emp)
select * from aniket where new_rank='2';


---partition by ---

with gaikwad as---salary will be arrange ascending then dipartment vise will be sorted then rank 1 will show
(select *,dense_rank() over (partition by city order by salary asc) as new_rank from emp)
select * from gaikwad where new_rank='1';

----group by use when aggrigate function is to be used  also row get reduce also how many time repete does not matter 

select * from emp;
select city,max(age) from emp group by city;



create table over_Test(EMPID int, FirstName varchar(20),Gender varchar(2),salary int)

 insert into over_Test values(1,'Mohini','F',1000)
 insert into over_Test values(2,'Rohit','M',2000)
 insert into over_Test values(3,'Amit','M',4000)
 insert into over_Test values(4,'Sonal','F',5000)
 insert into over_Test values(5,'Minal','F',6000)
 insert into over_Test values(6,'Amar','M',3600)
 insert into over_Test values(7,'Shital','F',4500)
 insert into over_Test values(8,'Sohil','M',6000)
 insert into over_Test values(9,'praveen','F',9000)
 insert into over_Test values(10,'Mithali','F',9000)
 insert into over_Test values(11,'seema','F',9000)
 insert into over_Test values(12,'meena','F',10000)
 select * from over_Test

 select top 3 salary from over_test order by gender;

 select gender,max(salary) from over_test group by gender;

 select * from over_test order by gender;


 select *,DENSE_RANK() over (order by gender) as newbee from over_test;
 

 ---sql function
 --1.upper
 select upper('city');

 select *,upper(firstname) as uppercase from over_test ;

--- 2 lower
select lower('city');

 select *,lower(firstname) as uppercase from over_test ;

 --3 substring
 ---x
 ---y
 ---12345
 ---abcde
 select substring('abcdef',2,2);

 select *, substring (FirstName,2,2) from over_Test;


 --4 length

 select len('abcdef');

 select *,len(firstname) from over_test;

 --5.reverse

 select REVERSE('abcdef');
 select reverse (firstname) from over_Test;

 --6.replicate
 --create duplicate values

 select REPLICATE('city',4);
  select replicate (firstname,4) from over_Test;


  --7.replace

  select replace('scodeen','e','t');
    select replace('scodeen','een','t');


	--8 concate

	 select * from over_Test;
	 select *,firstname+gender as newtack from over_Test;
	 select *,CONCAT(firstname,' ',gender) as nnn from over_test;

	 --9 trim---ltrim and Rtrim
	 --remove space 
	 select('       glass      ');
	 select ltrim('       glass      ');
	 select rtrim('       glass      ');
	 select ltrim(rtrim('    glass      '));---both trim

	 --10  round

	 select round(74.4,0);---upto 0 value after point --ie:-74.4 will be round upto 74
	 select round(74.45,0);
	 select round(74.4567,2);--upto 2 value after point


	 --11 convert 

create table DOJ (id int, NAME varchar(20),DOJ datetime)	 
insert into DOJ values (1,'Mansa','2020-01-01 10:10:10')
insert into DOJ values (2,'Vasavi','2015-06-01 10:20:10')
insert into DOJ values (3,'Pravlika','2014-04-01 11:10:10')
insert into DOJ values (4,'Jyoti','2017-08-01 12:10:10')
insert into DOJ values (5,'Pushpa','2016-05-01 01:23:10')
insert into DOJ values (6,'Seema',GETDATE())


select * from DOJ

select *,convert(varchar,doj) from doj;--convert into diffrent from 

select convert(varchar,getdate(),5);


