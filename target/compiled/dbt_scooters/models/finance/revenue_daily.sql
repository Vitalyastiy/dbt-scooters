select
    sum(price_rub) as revenue_rub,
    "date",
    
    now() as updated_at

from
    "dev_o0af"."dbt"."trips_prep"

where
    "date" >= (select max("date") - interval '2' day from "dev_o0af"."finance"."revenue_daily")

group by
    2,
    3
order by
    2