select
    sum(price_rub) as revenue_rub,
    "date",
    
    now() as updated_at

from
    "dev_ohwk"."dbt"."trips_prep"

where
    "date" >= (select max("date") - interval '2' day from "dev_ohwk"."dbt_finance"."revenue_daily")

group by
    2,
    3
order by
    2