with source as (

        select * from {{ source ('northwind','Strings')  }}

)

select * from source

