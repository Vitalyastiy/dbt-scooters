
  
    

  create  table "dev_m0z9"."dbt"."companies__dbt_tmp"
  
  
    as
  
  (
    select
    company,
    count(*) as models,
    sum(scooters) as scooters
from
    "dev_m0z9"."dbt"."scooters"
group by
    1
  );
  