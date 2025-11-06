
select
    
        "date"::text ||
    
        "age"::text ||
    
    ''
from
    "dev_m0z9"."dbt"."trips_age_daily"
group by
    1
having
    count(*) > 1
