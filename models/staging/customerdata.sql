

{{config(materialized='view')}}

select * from {{ source('keyvan', 'customers') }}