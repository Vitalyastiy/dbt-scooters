with test_data as (

    select
        3 as number_actual_columns,
        3 as value

)
select *
from test_data
where
    number_actual_columns != value