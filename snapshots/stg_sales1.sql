{% snapshot stg_sales1 %}
    {{
        config(
            unique_key='sale_id',
            strategy='check',
            check_cols='all', 
            target_schema="DBTL_DV_SCH1"  
        )
    }}

    select * from {{ source('employee1_sources', 'sales1') }}
 {% endsnapshot %}