
  
    

  create  table "dev_o0af"."dbt"."companies_trips__dbt_tmp"
  
  
    as
  
  (
    with trips_cte as (
    select
        company,
        count(*) as trips
    from
        "dev_o0af"."dbt"."trips_prep" as t
        join "dev_o0af"."dbt"."scooters" as s
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
    join "dev_o0af"."dbt"."companies" as c
        using (company)
  );
  