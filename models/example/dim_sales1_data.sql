{{ config( 
       materialized='table'
   ) 
}}
with sales1 
     as (select
     sale_id,
     sale_amt,
     GST,
    {{(sale_tax1('sale_amt', 'GST')) }} as total_sale_value
    from {{ ref('stg_sales1') }}
)
select * from sales1
