with source as (

        select * from {{ source ('northwind','PurchaseOrderDetails')  }}

)

select * from source

