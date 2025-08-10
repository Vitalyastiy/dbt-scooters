
  create view "dev_ohwk"."dbt"."trips_age_daily__dbt_tmp"
    
    
  as (
    select
    "date",
    age,
    count(*) as trips,
    sum(price_rub) as revenue_rub
from
    "dev_ohwk"."dbt"."trips_users"
group by
    1,
    2
  );