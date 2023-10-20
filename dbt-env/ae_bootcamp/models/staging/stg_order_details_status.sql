with source as (

        select * from {{ source ('northwind','OrderDetailsStatus')  }}

)

select * from source

