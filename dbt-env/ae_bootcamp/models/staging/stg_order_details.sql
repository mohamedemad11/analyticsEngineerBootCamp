with source as (

        select * from {{ source ('northwind','OrderDetails')  }}

)

select * from source

