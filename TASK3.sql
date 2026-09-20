1. CREATE A TABLE named EMPLOYEE. The table contains 8 columns: EMPNO, ENAME, JOB, HIREDATE, MGR, SAL, COMM, DEPTNO. 
create database EMPLOYEE;
use employee;
create table employee(EMPNO int primary key ,ENAME varchar(50),JOB VARCHAR(58),HIREDATE DATE,MGR INT,COMM INT,DEPTNO INT);
ALTER TABLE EMPLOYEE ADD SAL INT(30);

2. Add a PRIMARY KEY to the EMPNO column.

 3. Insert the given employee data into the EMPLOYEE table.
 
INSERT INTO EMPLOYEE
(EMPNO, ENAME, JOB, HIREDATE, MGR, SAL, COMM, DEPTNO)
VALUES
(7369, 'SMITH', 'CLERK', '1980-12-17', 7902, 800, NULL, 20),
(7499, 'ALLEN', 'SALESMAN', '1981-02-20', 7698, 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', '1981-02-22', 7698, 1250, 500, 30),
(7566, 'JONES', 'MANAGER', '1981-04-02', 7839, 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', '1981-09-28', 7698, 1250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', '1981-05-01', 7839, 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', '1981-06-09', 7839, 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', '1987-04-19', 7566, 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT', '1981-11-17', NULL, 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', '1981-09-08', 7698, 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', '1987-05-23', 7788, 1100, NULL, 20),
(7900, 'JAMES', 'CLERK', '1981-12-03', 7698, 950, NULL, 30),
(7902, 'FORD', 'ANALYST', '1981-12-03', 7566, 3000, NULL, 20),
(7934, 'MILLER', 'CLERK', '1982-01-23', 7782, 1300, NULL, 10);
 4. Write a query to display all the employee details from the EMPLOYEE table.
 SELECT * FROM EMPLOYEE;
 
 5. Write a query to display all employee names and salary details from the EMPLOYEE table.
 SELECT ENAME,SAL FROM EMPLOYEE;
 
 6. Write a query to display only employee names and HIREDATE from the EMPLOYEE table.
 SELECT ENAME, HIREDATE from EMPLOYEE;
 
 7. WAQTD names of all the employees.
 SELECT ENAME from  EMPLOYEE;
 8. WAQTD name and salary given to all the employees.
 SELECT SAL FROM EMPLOYEE;
 9. WAQTD name and commission given to all the employees. 
 select ENAME, COMM from employee;
 10. WAQTD employee ID and department number of all the employees in EMP table. 
 select EMPNO,DEPTNO from employee;
 11. WAQTD ENAME and HIREDATE of all the employees.
 select ENAME,HIREDATE FROM EMPLOYEE;
 12. WAQTD name and designation of all the employees.
 SELECT ENAME,JOB FROM EMPLOYEE;
 13. WAQTD name, job and salary given to all the employees.
 SELECT ENAME,JOB,SAL FROM EMPLOYEE;
 14. WAQTD department names present in the DEPARTMENT table.
 
 15. WAQTD DNAME and LOCATION present in the DEPT table.
 
 16. WAQTD name and annual salary of the employees.
 
 17. WAQTD all the details of the employee along with annual salary.
 
 18. WAQTD name and salary of an employee with a deduction of 10%.