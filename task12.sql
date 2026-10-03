'''1. The HR team wants to know how many employees are working in each department.
Display:
•	department name 
•	number of employees'''
select  dept_name,count(*) emp_name  from employee e join dept d on e.dept_id= d.dept_id group by dept_id;

'''2. For every department, find:
•	highest salary 
•	lowest salary 
Display the department name along with both values.'''
select dept_name,max(sal) as "maximum_sal",min(sal) as "minimum_sal" from employee e 
join dept d on e.dept_id=d.dept_id group by dept_id; 
'''3. Find the number of ACTIVE employees in each department.
Display departments with their active employee count.'''
select dept_name,count(*) as "active_employee" from  employee e join dept d on c.dept_id=o.dept_id
 where status= "Active"group by dept_id;
'''4. Find departments where the average salary of all employees is greater than 70000.'''
select dept_name, avg(sal) from employee e join dept d on e.dept_id= d.dept_id group by dept_id having avg(sal)>70000;
'''5. Find the total salary paid to employees in each city.
Ignore employees whose city is NULL.
Display:
city
total_salary

Sort from highest total salary to lowest.'''

'''6. Find the number of employees hired in each year.
For example:
2018 | 4
2019 | 5
2020 | 6
Sort by hiring year'''

'''7. For each department, calculate:
highest salary - lowest salary
Display:
department_name
salary_difference
Show only departments where the difference is greater than 30000.'''