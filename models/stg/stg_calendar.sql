{{ config(materialized='table') }}

with stg_calendar as (

select 
    "listing_id" as listing_id,
    to_date("date") as date,
    to_decimal(to_numeric(ltrim("price",'$"'))) as price,
    "available" as available

 from dbt_rbnb.raw.calendar
)

select * from stg_calendar