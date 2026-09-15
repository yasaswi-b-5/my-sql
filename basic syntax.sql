#create 
create database employee1;
use employee1;
create table employee1(empno int  ,empname varchar(30),empsalary decimal(9,2),doj date);


#alter
alter table employee1 add address varchar(30);
alter table employee1 add primary key (empno); 
alter table employee1 add constraint uni_name unique (empname);

#truncate
truncate table employee1;

#insert
insert into employee1 values(1,"raju",1234000,"2016-04-18");
insert into employee1(empname,empno) values("siva",2);
insert into employee1 values(3,"siva",234554,"2018-09-25");

#update
update employee1 set empsalary=190000 where empno=2;
update employee1 set doj="2018-09-24" where empname="siva";
update employee1 set empname="jay" where empno=3;

#delete
delete from  employee1 where empname="siva"; 
delete from employee1 where empno=1;

#commit
commit;

#rollback
rollback;

#savepoint

#select
select*from employee1;

#desc
desc employee1;


#auto commit
set autocommit=0;
