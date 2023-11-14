select distinct
    listing_id id_rental,
    max(date) max_date_review
from {{ ref('stg_reviews') }}
group by listing_id
