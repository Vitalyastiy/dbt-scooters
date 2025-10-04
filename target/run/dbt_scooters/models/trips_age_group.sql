
  
    

  create  table "dev_h8qz"."dbt"."trips_age_group__dbt_tmp"
  
  
    as
  
  (
    select
    ag."group" as age_group,
    count(*) as trips,
    sum(price_rub) as revenue_rub
from
    "dev_h8qz"."dbt"."trips_users" as tu
    cross join "dev_h8qz"."dbt"."age_groups" as ag
where
    tu.age >= ag.age_start
    and tu.age <= ag.age_end
group by
    1
  );
  