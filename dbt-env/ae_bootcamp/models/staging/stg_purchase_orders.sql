with source as (

        select * from {{ source ('northwind','PurchaseOrders')  }}

)

select * from source

