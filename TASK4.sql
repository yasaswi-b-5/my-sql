
1.Write a query to display the name and salary of employees who earn a commission of ₹1,400?
2. Write a query to display all details of employees whose commission is greater than their salary?
3. Write a query to display the employee number of employees who were hired before the year 1987?
4. Write a query to display all details of employees working as ANALYST?


SELECT EMP_NAME, SALARY FROM EMPLOYEES WHERE COMM=1400;
SELECT *FROM EMPLOYEES WHERE COMM>SALARY;
SELECT EMP_NO FROM EMPLOYEES WHERE HIERATED<'1987-01-01';
select * from employees where emp_role=ANALYST ;


