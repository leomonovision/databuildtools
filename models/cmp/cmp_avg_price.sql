with avg_price as (
    select 
        listing_id,
        avg(price) as avg_price
    --    avg("adjusted_price") as avg_adjusted_price
    from {{ ref('stg_calendar') }}
    --from dbt_rbnb.dbt_lmonot_stg.stg_calendar
    group by listing_id
)

select * from avg_price