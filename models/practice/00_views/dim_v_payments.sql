with 

payments as 

(select * from {{ ref("dim_t_payments") }}) 

select * from payments