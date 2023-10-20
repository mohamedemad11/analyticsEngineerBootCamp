with source as (

        select * from {{ source ('northwind','EmployeePrivileges')  }}

)

select * from source

