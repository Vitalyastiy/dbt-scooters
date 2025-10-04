select
    company,
    count(*) as models,
    sum(scooters) as scooters
from
    "dev_h8qz"."dbt"."scooters"
group by
    1