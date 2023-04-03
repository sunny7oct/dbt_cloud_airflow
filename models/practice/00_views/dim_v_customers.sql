with 

customers as 

    (select * from {{ ref("dim_t_customers") }}) 

select * from customers
