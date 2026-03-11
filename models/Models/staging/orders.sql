{{ config(materialized='table') }}

select
    cast(order_id as number) as order_id,
    cast(order_date as date) as order_date,
    cast(customer_id as number) as customer_id
from orders