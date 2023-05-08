{{
  config(
    pre_hook=before_begin("call return_greater(1,2);")
  )
}}

select * from
{{ ref('dim_t_customers') }}