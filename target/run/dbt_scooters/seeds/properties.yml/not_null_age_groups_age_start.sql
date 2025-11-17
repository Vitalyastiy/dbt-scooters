select
    count(*) as failures,
    count(*) != 0 as should_warn,
    count(*) != 0 as should_error
from (

    select age_start
    from "dev_m0z9"."dbt"."age_groups"
    where age_start is null

) dbt_internal_test
