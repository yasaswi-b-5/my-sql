USE EMPLOYEE;
.Write a query to display employee name, salary, previous salary, and next salary.
 SELECT EMPNO, ENAME, SAL,
        LAG(SAL) OVER (ORDER BY EMPNO) AS DIFF_PREVIOUS,
        LEAD(SAL) OVER (ORDER BY EMPNO) AS DIFF_NEXT
FROM EMPLOYEE;
2.Write a query to display the salary difference from the previous employee and next employee.
select ename,sal, sal-lag(sal) over (order by empno) as "prev_diff_sal",
lead(sal) over (order by empno)-sal as "next_diff_sal" from employee;

3.Write a query to find the highest-paid employee from every department.
with temp as(
select ename,deptid ,dense_rank() over (partition by deptid order by sal desc) as "rn" from employee )
select * from temp where rn =1;

4.Write a query to find the second-highest-paid employee from every department.
with temp as(
select ename,deptid ,dense_rank() over (partition by deptid order by sal desc) as "rn" from employee)
select* from  temp  where rn =2;

5.Write a query to find the third-highest-paid employee from every department.
with temp as(
select ename,deptid ,dense_rank() over (partition by deptid order by sal desc) as "rn" from employee )
select* from temp where rn =3;

6.Write a query to display the top 2 employees from each department based on salary.
with temp as(
select ename,deptid ,dense_rank() over (partition by deptid order by sal desc) as "rn" from employee )
select * from temp where rn <=2;

7.Write a query to display employees whose salary is higher than the previous employee but lower than the next employee.
with temp as (
select ename,sal, lag(sal) over (order by empno) as "prev_sal",
lead(sal) over (order by empno) as "next_sal"  from employee)
select * from temp where next_sal>sal and sal<prev_sal;

8.Write a query to display the overall salary rank and department-wise salary rank of every employee.
 select ename,deptid ,RANK() OVER (ORDER BY SAL DESC),rank() over (partition by deptid order by sal desc) from  employee;
