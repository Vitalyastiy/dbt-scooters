select
    count(*) as failures,
    count(*) != 0 as should_warn,
    count(*) != 0 as should_error
from (

    select count(distinct age) as filler_column

    from "dev_m0z9"."dbt"."sex_age_pivot"

    having count(distinct age) = 1

) dbt_internal_test
