{{ config(
    partition_by={
        "field": "transaction_created_date",
        "data_type": "date"


    }

)}}



with source as (
select 
id as inventory_id , 
transaction_type , 
cast(transaction_created_date as date)  as transaction_created_date, 
transaction_modified_date ,
product_id , 
quantity , 
purchase_order_id , 
customer_order_id , 
comments 
from {{ref ('stg_inventory_transactions')}}

where id is not Null
)
, unique_source as (

select * , row_number() over( partition by inventory_id ) as inventory_transactions_row_number
from source
)

select * 
except(inventory_transactions_row_number)
from unique_source 
where inventory_transactions_row_number = 1 