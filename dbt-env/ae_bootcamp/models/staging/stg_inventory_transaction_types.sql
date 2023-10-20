with source as (

        select * from {{ source ('northwind','InventoryTransactionTypes')  }}

)

select * from source

