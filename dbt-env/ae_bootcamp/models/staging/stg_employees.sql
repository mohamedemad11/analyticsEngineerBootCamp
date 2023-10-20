with source as (

        select * from {{ source ('northwind','Employees')  }}

)

select * from source

