
  create view "dev_ohwk"."dbt"."companies__dbt_tmp"
    
    
  as (
    select
    company,
    count(*) as models,
    sum(scooters) as scooters
from
    "dev_ohwk"."dbt"."scooters"
group by
    1
  );