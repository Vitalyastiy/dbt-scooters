
select
    
        "age"::text ||
    
    ''
from
    "dev_m0z9"."dbt"."sex_age_pivot"
group by
    1
having
    count(*) > 1
