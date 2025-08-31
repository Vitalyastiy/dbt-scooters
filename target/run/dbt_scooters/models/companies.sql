
  
    

  create  table "dev_o0af"."dbt"."companies__dbt_tmp"
  
  
    as
  
  (
    select
    company,
    count(*) as models,
    sum(scooters) as scooters
from
    "dev_o0af"."dbt"."scooters"
group by
    1
  );
  