select 
    host_id,
    host_name,
    host_total_listings_count,
    host_verifications
from {{ ref('stg_listings') }}