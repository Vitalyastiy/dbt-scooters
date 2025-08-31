select
    sum(price_rub) as revenue_rub,
    "date",
    
    now() as updated_at

from
    "dev_o0af"."dbt"."trips_prep"

group by
    2,
    3
order by
    2