create database order_pratice ; 
use order_pratice ; 

create table orders ( 
order_id int primary key , 
user_id int ,
order_amount int , 
order_date date ); 


SET SESSION cte_max_recursion_depth = 10000;

INSERT INTO orders (order_id, user_id, order_amount, order_date)
WITH RECURSIVE numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM numbers
    WHERE n < 10000
)
SELECT
    n,
    MOD(n, 100) + 1,
    MOD(n * 150, 5000) + 100,
    DATE_ADD('2025-01-01', INTERVAL MOD(n, 365) DAY)
FROM numbers;


select count(*) as total_orders 
from orders ; 

select count(*) as total_rows, 
 min(order_id) as first_id ,
 max(order_id) as last_id  
 from orders ; 

select * from orders 
where order_id = 3000;
