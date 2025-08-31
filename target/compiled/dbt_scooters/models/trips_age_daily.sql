select
    "date",
    age,
    count(*) as trips,
    sum(price_rub) as revenue_rub
from
    "dev_o0af"."dbt"."trips_users"
group by
    1,
    2