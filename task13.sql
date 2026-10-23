#1.Display department names and their employee counts, including departments with zero employees.
 SELECT d.department_name,
       COUNT(e.emp_id) AS employee_count
FROM DEPARTMENTS d
LEFT JOIN EMPLOYEE e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


#2.Find employees earning more than the average salary.
SELECT * FROM EMPLOYEE
WHERE salary > (
    SELECT AVG(salary)
    FROM EMPLOYEE
);


#3.Find employees earning more than Ravi.
SELECT * FROM EMPLOYEE
WHERE salary > (
    SELECT salary
    FROM EMPLOYEE
    WHERE emp_name = 'Ravi'
);


#4.Find the highest-paid employee in each department.
SELECT * FROM EMPLOYEE e
WHERE salary = (
    SELECT MAX(e2.salary)
    FROM EMPLOYEE e2
    WHERE e2.department_id = e.department_id
);


#5.Find employees whose names start with 'S'.
SELECT * FROM EMPLOYEE WHERE emp_name LIKE 'S%';



#6.Display employees whose city is NULL.
SELECT * FROM EMPLOYEE WHERE city IS NULL;