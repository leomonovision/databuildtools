with description as (
    select distinct
        id,
        'description_test' as description
    from {{ ref('stg_listings') }}
),

reviews as (
    select distinct
        a.id_rental,
        b.comments
    from {{ ref('cmp_max_review') }} a left join {{ ref('stg_reviews') }} b on a.id_rental = b.listing_id and a.max_date_review = b.date
)

select
    a.id id_rental,
    a.description,
    b.comments
FROM description a LEFT JOIN reviews b on a.id = b.id_rental

    