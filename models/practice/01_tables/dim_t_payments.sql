with

    payments as (
        select id, orderid, paymentmethod, status, amount, created
        from {{ source('coe', 'payments') }}
    )

select *
from payments
