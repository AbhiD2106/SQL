use flipkart

/*

select t1.order_id , t1.amount , t1.profit ,t2.order_date , t3.* 
from order_details t1 join 
orders t2
on t1.order_id = t2.order_id
join users t3
on t2.user_id = t3.user_id

*/

/*
 1.Find order_id, name, and city by joining users and orders. 
 2. Find order_id, and product category by joining order_details and category
 
Filtering Rows 
1. Find all the orders placed in Pune 
2. Find all orders under the Chairs category 


*/
/*

select t2.order_id , t1.name ,t1.city
from users t1 join orders t2
on t1.user_id = t2.user_id

select t1.order_id , t2.category from 
order_details t1 join category t2
on t1.category_id = t2.category_id

select * from orders t1 join users t2 on 
t1.user_id = t2.user_id 
where t2.city = 'Pune' and t2.name = 'Ishit'

select * from 
order_details t1 join category t2 
on t1.category_id = t2.category_id
where t2.vertical = 'Chairs'
*/

/*
1:53:57 Find all profitable orders

select t1.order_id , 
sum(t2.profit)  AS profit
from orders t1 
join order_details t2 on
t1.order_id = t2.order_id
group by t1.order_id	
having sum(t2.profit) > 0
order by profit desc

1:58:10 Find the customer who has placed the max number of orders 


select top 1 t2.name,
count(*) as total_orders
from orders t1
join users t2 
on t1.user_id = t2.user_id
group by t2.name
order by count(*) desc

2:00:20 Which is the most profitable category 

select top 5 t2.vertical ,
sum( t1.profit ) as profit
from order_details t1 join 
category t2 on
t1.category_id = t2.category_id
group by t2.vertical
order by sum( t1.profit ) desc

2:02:34 Which is the most profitable state 



select top 5 t3.state , sum( t2.profit) as profit
from orders t1
join order_details t2
on t1.order_id = t2.order_id
join users t3 
on t1.user_id = t3.user_id
group by t3.state
order by sum( t2.profit) desc


2:05:27 Find all categories with profits higher than 5000 


select t2.vertical ,
sum( t1.profit ) as profit
from order_details t1 
join category t2 
on t1.category_id = t2.category_id
group by t2.vertical
having sum( profit ) > 5000


*/

