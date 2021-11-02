with source_store_tables as (
    select * from {{ source('snowflow_sample_data', 'store_sales') }}
),

final as (
    select * from source_store_tables
)

select * from final