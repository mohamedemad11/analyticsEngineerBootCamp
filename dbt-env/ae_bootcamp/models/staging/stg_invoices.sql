with source as (

        select * from {{ source ('northwind','Invoices')  }}

)

select * from source

