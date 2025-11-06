select
    sum(price_rub) as revenue_rub,
    "date",
    
    now() as updated_at

from
    "dev_m0z9"."dbt"."trips_prep"

where
    "date" >= (select max("date") - interval '2' day from "dev_m0z9"."dbt"."revenue_daily")

group by
    2,
    3
order by
    2