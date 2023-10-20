with source as (

        select * from {{ source ('northwind','Shippers')  }}

)

select * from source

