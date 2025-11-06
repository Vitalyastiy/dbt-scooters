select
    ag."group" as age_group,
    count(*) as trips,
    sum(price_rub) as revenue_rub
from
    "dev_m0z9"."dbt"."trips_users" as tu
    cross join "dev_m0z9"."dbt"."age_groups" as ag
where
    tu.age >= ag.age_start
    and tu.age <= ag.age_end
group by
    1