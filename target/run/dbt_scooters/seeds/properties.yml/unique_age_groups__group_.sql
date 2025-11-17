select
    count(*) as failures,
    count(*) != 0 as should_warn,
    count(*) != 0 as should_error
from (

    select
        "group" as unique_field,
        count(*) as n_records

    from "dev_m0z9"."dbt"."age_groups"
    where "group" is not null
    group by "group"
    having count(*) > 1

) dbt_internal_test
