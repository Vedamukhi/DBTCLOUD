{% snapshot stg_employee1_profile_snap %}
   {{

       config(
         unique_key='EMP_ID',
         strategy='check',
         check_cols='all',
         target_schema="DBTL_DV_SCH1"
       )
       
}}

select
  *
from {{ source('employee1_sources','employee1_profile') }}  
{% endsnapshot %}