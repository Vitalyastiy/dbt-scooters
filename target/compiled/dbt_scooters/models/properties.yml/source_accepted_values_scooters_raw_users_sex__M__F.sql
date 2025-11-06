
    
    

with all_values as (

    select
        sex as value_field,
        count(*) as n_records

    from "dev_m0z9"."scooters_raw"."users"
    group by sex

)

select *
from all_values
where value_field not in (
    'M','F'
)


