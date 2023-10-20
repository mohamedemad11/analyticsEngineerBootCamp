with source as (

        select * from {{ source ('northwind','Suppliers')  }}

)

select * , current_timestamp as ingestion_timestamp from source
