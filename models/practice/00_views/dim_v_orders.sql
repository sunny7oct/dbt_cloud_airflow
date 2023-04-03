with 

orders as 

(select * from {{ ref("dim_t_orders") }}) 

select * from orders
