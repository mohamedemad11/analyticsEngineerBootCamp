with source as (

        select * from {{ source ('northwind','InventoryTransactions')  }}

)

select * from source

