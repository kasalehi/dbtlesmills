{{ config(materialized='table') }}

select
  c.EMAIL,
  o.*
from {{ ref('customerdata') }} as c
left join {{ ref('orderdata') }} as o
  on c.customerid = o.customerid
