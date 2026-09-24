
#1)A business wants a report showing each customer's name, order ID, and order amount.
 #Only include customers who have actually placed an order.
 #Goal: Decide which tables need to be joined and use the appropriate JOIN.
 select cust_name,order_id,order_amt
 from customer inner join orders
 on customer.cust_id=orders.cust_id;
 
 
#2)A company wants to know how much money each customer has spent in total.
# Display: Customer Name | Total Amount Spent Include only customers whose total spending is greater than 10,000. 
#Goal: Use JOIN + SUM() + GROUP BY + HAVING.
 select cust_name,sum(amount) as total_amount_spent
 from  customer inner join orders
 on customer.cust_id= orders.cust_id
 group by cust_name having total_amount_spent>10000;
 
 
 
 
#3)A company wants to create a display name for every customer in this
#format:RAHUL - Hyderabad PRIYA - Chennai The customer's name should be in uppercase, followed by their city.
# Goal: Use MySQL string functions and combine multiple columns.
 select concat(upper(cust_name)," - ",city) from customer;
 
 

