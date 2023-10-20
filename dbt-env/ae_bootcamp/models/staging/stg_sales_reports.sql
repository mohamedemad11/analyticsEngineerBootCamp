with source as (

        select * from {{ source ('northwind','SalesReports')  }}

)

select * from source

