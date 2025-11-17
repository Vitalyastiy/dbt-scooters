select
    count(*) as failures,
    count(*) != 0 as should_warn,
    count(*) != 0 as should_error
from (

    select

        "age"::text

        || ''
    from
        "dev_m0z9"."dbt"."sex_age_pivot"
    group by
        1
    having
        count(*) > 1

) dbt_internal_test
