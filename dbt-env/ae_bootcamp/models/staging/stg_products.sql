with source as (

        select * from {{ source ('northwind','Products')  }}

)

select * from source

