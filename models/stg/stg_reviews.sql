{{ config(materialized='table') }}
select * from dbt_rbnb.raw.reviews