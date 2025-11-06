
  
    

  create  table "dev_m0z9"."dbt"."trips_age_daily_stat__dbt_tmp"
  
  
    as
  
  (
    select
    age,
    avg(trips) as avg_trips,
    avg(revenue_rub) as avg_revenue_rub
from
    "dev_m0z9"."dbt"."trips_age_daily"
group by
    1
order by
    1
  );
  