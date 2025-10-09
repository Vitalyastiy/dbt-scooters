
select
    
        "date"::text ||
    
        "age"::text ||
    
    ''
from
    "dev_h8qz"."dbt"."trips_age_daily"
group by
    1
having
    count(*) > 1
