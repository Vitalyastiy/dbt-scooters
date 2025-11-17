select count(distinct age) as filler_column

from "dev_m0z9"."dbt"."sex_age_pivot"

having count(distinct age) = 1
