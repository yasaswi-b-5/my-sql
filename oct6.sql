/*1. Employees earning above company average
Find employees whose salary is greater than the average salary of all employees.
Display:
employee_id
first_name
last_name
salary*/
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);
/*2. Employees earning the highest salary
Find the employee or employees who have the highest salary in the company.*/
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);
/*3. Find employees whose salary is below the overall company average salary.
Display the employee name, department ID and salary.*/
SELECT CONCAT(first_name, ' ', last_name) AS employee_name,
       department_id,
       salary
FROM employee
WHERE salary < (
    SELECT AVG(salary)
    FROM employee
);

/*4. Find all employees who belong to the IT department.
For this question, get the IT departments ID using a subquery instead of directly writing the ID.*/
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE department_id = (
    SELECT department_id
    FROM department
    WHERE department_name = 'IT'
);

/*5. Find employees whose salary is greater than the highest salary in the Finance department.
Display:
employee_name
department
salary*/
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
       d.department_name AS department,
       e.salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
WHERE e.salary > (
    SELECT MAX(e2.salary)
    FROM employee e2
    INNER JOIN department d2
    ON e2.department_id = d2.department_id
    WHERE d2.department_name = 'Finance'
);

/*6. Find employees whose salary is greater than the average salary of IT employees.
They can belong to any department.*/
SELECT employee_id, first_name, last_name, salary
FROM employee
WHERE salary > (
    SELECT AVG(e.salary)
    FROM employee e
    INNER JOIN department d
    ON e.department_id = d.department_id
    WHERE d.department_name = 'IT'
);
/*7. Find employees who belong to a department whose average salary is greater than 70000.
Display:
employee_name
department_name
salary*/
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
       d.department_name,
       e.salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
WHERE e.department_id IN (
    SELECT department_id
    FROM employee
    GROUP BY department_id
    HAVING AVG(salary) > 70000
);
/*8. Find employees whose salary is equal to the highest salary in their own department.
If a department has two employees tied for the highest salary, return both.*/
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
       e.department_id,
       e.salary
FROM employee e
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employee e2
    WHERE e2.department_id = e.department_id
);
/*9. Find departments whose average salary is greater than the overall company average salary.
Display:
department_name
average_salary*/
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name
HAVING AVG(e.salary) > (
    SELECT AVG(salary)
    FROM employee
);

/*10. Find departments whose average salary is greater than the overall company average salary.
Display:
department_name
average_salary*/
SELECT d.department_name,
       AVG(e.salary) AS average_salary
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name
HAVING AVG(e.salary) > (
    SELECT AVG(salary)
    FROM employee
);
