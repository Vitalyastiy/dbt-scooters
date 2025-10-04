
  
    

  create  table "dev_h8qz"."dbt"."companies__dbt_tmp"
  
  
    as
  
  (
    select
    company,
    count(*) as models,
    sum(scooters) as scooters
from
    "dev_h8qz"."dbt"."scooters"
group by
    1
  );
  