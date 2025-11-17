select
    count(*) as failures,
    count(*) != 0 as should_warn,
    count(*) != 0 as should_error
from (

    select "group"
    from "dev_m0z9"."dbt"."age_groups"
    where "group" is null

) dbt_internal_test
