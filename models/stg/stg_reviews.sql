{{ config(materialized='table') }}
select
    "listing_id" listing_id,
	"id" id, 
	to_date("date") date, 
	"reviewer_id" reviewer_id,
	"reviewer_name" reviewer_name,
	"comments" comments
from {{ source('paris', 'reviews') }}