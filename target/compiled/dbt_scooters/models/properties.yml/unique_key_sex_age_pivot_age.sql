
select
    
        "age"::text ||
    
    ''
from
    "dev_h8qz"."dbt"."sex_age_pivot"
group by
    1
having
    count(*) > 1
