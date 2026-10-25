create database orderrs ; 
use orderrs ; 

create table orders ( 
user_id int primary key );

insert into orders (user_id) 
values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

create index idx_user_id 
on orders(user_id) ; 

select * from orders 
where user_id = 5 ; 

------ Task 3 ----- 

-- column	  Before index	                    After index
   type	   May show ALL (full table scan)   	May show ref or another access type
   key	   NULL    if no index is used	        May show idx_user_id
  rows	   May examine more rows	            May examine fewer rows
  Extra	   May show Using where	Depends        on the query and execution plan