with source as (

        select * from {{ source ('northwind','PurchaseOrderStatus')  }}

)

select * from source

