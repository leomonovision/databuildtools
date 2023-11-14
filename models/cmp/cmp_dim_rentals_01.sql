with dim_rentals as (
    select 
        id,
        host_id,
        street,
        neighbourhood,
        city,
        state,
        zipcode,
        country,
        property_type,
        room_type,
        bedrooms,
        price,
        weekly_price,
        monthly_price,
        amenities,
        has_availability,
        availability_30,
        availability_60,
        availability_90,
        availability_365
    from {{ ref('stg_listings') }}
)

select * from dim_rentals