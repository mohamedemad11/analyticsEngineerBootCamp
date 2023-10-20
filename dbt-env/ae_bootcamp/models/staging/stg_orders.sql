with source as (

        select * from {{ source ('northwind','Orders')  }}

)

select * from source

