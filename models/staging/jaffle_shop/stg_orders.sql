with
    orders as (

        select id as order_id, user_id as customer_id, order_date, status

        from {{ source("jaffle_shop", "RAW_JAFFLE_SHOP_ORDERS") }}
    )

select *
from orders
