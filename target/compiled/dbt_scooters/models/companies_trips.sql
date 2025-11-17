with trips_cte as (
    select
        company,
        count(*) as trips
    from
        "dev_m0z9"."dbt"."trips_prep" as t
    join "dev_m0z9"."dbt"."scooters" as s
        on t.scooter_hw_id = s.hardware_id
    group by
        1
)

select
    company,
    t.trips,
    c.scooters,
    t.trips / cast(c.scooters as float) as trips_per_scooter
from
    trips_cte as t
join "dev_m0z9"."dbt"."companies" as c
    using (company)
