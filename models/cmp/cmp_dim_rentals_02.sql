with rentals_main as 
(
    select
        *
    from {{ ref('cmp_dim_rentals_01') }}
),

amenities as (
    select 
        *
    from {{ ref('cmp_amenities') }}
)

select a.*, b.* from rentals_main a LEFT JOIN amenities b ON a.id = b.id_rental