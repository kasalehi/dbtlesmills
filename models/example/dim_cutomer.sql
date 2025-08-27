{{
    config(materialized='table')
}}

select c.Name,o.* from {{ source('keyvan', 'customers') }} as c
left join {{ source('keyvan', 'orders') }} as o
on c.customerid=o.customerid