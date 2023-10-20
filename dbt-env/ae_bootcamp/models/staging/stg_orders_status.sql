with source as (

        select * from {{ source ('northwind','OrdersStatus')  }}

)

select * from source

