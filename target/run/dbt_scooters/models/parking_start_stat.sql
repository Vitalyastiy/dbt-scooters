
  
    

  create  table "dev_ohwk"."dbt"."parking_start_stat__dbt_tmp"
  
  
    as
  
  (
    select
    st_transform(hex.geom, 4326) as geom,
    count(*) as trips
from
    "dev_ohwk"."dbt"."trips_geom" as t
cross join
    st_hexagongrid(500, st_transform(t.start_point, 3857)) as hex
where
    st_intersects(st_transform(t.start_point, 3857), hex.geom)
group by
    1
  );
  