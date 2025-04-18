{{
    config(
        materialized="incremental",
        unique_key="EMP_ID",
        transient=false,
        incremental_strategy="delete+insert",
    )
}}
select * from {{ source('employee1_sources', 'emp_comp_range1') }}