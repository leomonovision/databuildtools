with avg_price as (
    select 
        listing_id id_rental,
        month(date) as monthdate,
        avg(price) as avg_price
    from {{ ref('stg_calendar') }}
    group by listing_id, month(date)
)

select * from avg_price