
  create view "dev_m0z9"."dbt"."trips_geom__dbt_tmp"
    
    
  as (
    select
    id,
    st_setsrid(st_makepoint(start_lon, start_lat), 4326) as start_point,
    st_setsrid(st_makepoint(finish_lon, finish_lat), 4326) as finish_point
from
    "dev_m0z9"."scooters_raw"."trips"
  );