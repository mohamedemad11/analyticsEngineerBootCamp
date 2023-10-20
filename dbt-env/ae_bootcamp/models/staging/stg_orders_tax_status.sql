with source as (

        select * from {{ source ('northwind','OrdersTaxStatus')  }}

)

select * from source

