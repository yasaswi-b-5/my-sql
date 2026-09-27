#Write a query to find employees whose salary is greater than 50,000 and display their department name.
use employee;
SELECT E.ENAME, D.DEPT_NAME
FROM EMPLOYEE E
INNER JOIN DEPT D
ON E.DEPTID = D.DEPTID
WHERE E.SALARY > 50000;

-- Write a query to find employees who work in either IT or HR.
select ename from employee where dept in ('IT','HR');

#Write a query to display all employees, including employees without a department.
SELECT E.ENAME, D.DEPT_NAME
FROM EMPLOYEE E
LEFT JOIN DEPT D
ON E.DEPTID = D.DEPTID;

#Write a query to display department name and employee name using RIGHT JOIN.
SELECT D.DEPT_NAME, E.ENAME
FROM EMPLOYEE E
RIGHT JOIN DEPT D
ON E.DEPTID = D.DEPTID;

#Write a query to find employees who do not have a manager.
SELECT ENAME FROM EMPLOYEE WHERE   MGR IS NULL;

#Write a query to create a view containing employees whose salary is greater than 50,000.
CREATE VIEW high_salary_emp AS
SELECT *
FROM EMPLOYEE
WHERE SALARY > 50000;

#Write a query to create a view that displays employee name and annual salary.
CREATE VIEW  EMP_ANNUAL_SALARY AS
SELECT ENAME,SAL*12 AS ANNUAL_SALARY FROM EMPLOYEE;