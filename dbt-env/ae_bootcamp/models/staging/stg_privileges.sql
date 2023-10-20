with source as (

        select * from {{ source ('northwind','Privileges')  }}

)

select * from source

