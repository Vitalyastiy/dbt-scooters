select
    count(*) as failures,
    count(*) != 0 as should_warn,
    count(*) != 0 as should_error
from (

    select sex
    from "dev_m0z9"."scooters_raw"."users"
    where sex is null

) dbt_internal_test
