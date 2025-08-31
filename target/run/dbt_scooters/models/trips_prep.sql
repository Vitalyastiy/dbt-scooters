
  create view "dev_o0af"."dbt"."trips_prep__dbt_tmp"
    
    
  as (
    select id,
user_id,
scooter_hw_id,
started_at	,
finished_at	,
start_lat,	
start_lon,
finish_lat,	
finish_lon,	
distance	as distance_m,
cast(price as decimal(20,2))/ 100 as price_rub,
extract(epoch from(finished_at - started_at)) duration_s,
finished_at <> started_at and price = 0 as is_free,

    date(started_at at time zone 'Europe/Moscow')
 as "date" 
from
"dev_o0af"."scooters_raw"."trips"
  );