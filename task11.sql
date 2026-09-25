
1. Date Function
An online store wants to find all orders placed during the current year.
Return the order ID, customer name, order date, and amount.
Goal: Use MySQL date functions rather than manually entering the year.

select
o.order_id,
c.cust_name,
o.order_date,
o.amt
from orders.o join customer.c
on c.cust_id=o.cust_id
where o.order_date= year(curdate());




2. An e-commerce company wants to find the top-spending customers, but only among customers whose total spending is greater than 
the average total spending of all customers.
Return:
Customer Name | Total Spending
Sort the result from highest spending to lowest spending.
Goal: Combine JOIN, GROUP BY, SUM(), HAVING, ORDER BY, and a subquery.


select cust_name,cust_id,sum(amount) as total_amount
from customer c inner join orders o on c.cust_id=o.cust_id
group by cust_name,cust_id having sum(amount)>(select avg(total_amount_spent) from
(select cust_id,sum(amount) as total_amount_spent from orders group by cust_id ) as temp)
order by sum (amount) desc;



