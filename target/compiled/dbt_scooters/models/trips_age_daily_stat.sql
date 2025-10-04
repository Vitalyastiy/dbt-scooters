select
    age,
    avg(trips) as avg_trips,
    avg(revenue_rub) as avg_revenue_rub
from
    "dev_h8qz"."dbt"."trips_age_daily"
group by
    1
order by
    1