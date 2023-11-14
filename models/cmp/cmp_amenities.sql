with array_amenities as (
    select distinct
        id id_rental,
        CASE WHEN amenities LIKE '%TV%' THEN 1 ELSE Null END as FLG_TV,
        CASE WHEN amenities LIKE '%Wifi%' THEN 1 ELSE Null END as FLG_WIFI,
        CASE WHEN amenities LIKE '%Hair dryer%' THEN 1 ELSE Null END as FLG_Hair_dryer,
        CASE WHEN amenities LIKE '%Dryer%' THEN 1 ELSE Null END as FLG_Dryer,
        CASE WHEN amenities LIKE '%Washer%' THEN 1 ELSE Null END as FLG_Washer,
        CASE WHEN amenities LIKE '%Heating%' THEN 1 ELSE Null END as FLG_Heat
    from {{ ref('stg_listings') }})

select * from array_amenities

