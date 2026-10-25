create database orde ; 
use  orde ; 

create table orders ( 
order_id int primary key ,
order_amount int ,
order_date date ) ; 

insert into orders (order_id,order_amount,order_date) 
values
(1, 500, '2026-10-01'),
(2, 1200, '2026-10-02'),
(3, 750, '2026-10-03'),
(4, 2000, '2026-10-04'),
(5, 950, '2026-10-05'),
(6, 1500, '2026-10-06'),
(7, 650, '2026-10-07'),
(8, 1800, '2026-10-08'),
(9, 1100, '2026-10-09'),
(10, 2500, '2026-10-10');

select * from orders 
where order_id = 5; 

select order_id,order_amount ,order_date 
from orders 
where order_id =5; 

explain 
select order_id,order_amount ,order_date 
from orders 
where order_id =5; 

--- Conclusion Chat-gpt ----- 

--- I used ChatGPT to research SQL query optimization. One technique other than indexing is avoiding SELECT * and selecting only the required columns. 
--- This reduces unnecessary data retrieval and can improve query performance, 
---- especially when tables contain many columns or large text fields.
 ----- I would apply this technique to my orders table and compare the execution plans and actual execution times before and after the change.