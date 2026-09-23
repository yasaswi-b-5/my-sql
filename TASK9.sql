1.Find employees who have more projects than the average number of projects per employee.
select projects,empname from employee where projects > (select avg(projects) from employee); 
2.Find projects whose budget is greater than the average project budget for that employee. 
select empname,proj_budget from employee where proj_budget > (select avg(proj_budget) from employee);
3.Find employees who have at least one project with a budget greater than 150000. 
select distinct empname, proj_budget>150000 from employee;
4. Find the employee with the highest project budget using a CTE.
with temp as(
select max(proj_budget) from employee)
select* from temp
