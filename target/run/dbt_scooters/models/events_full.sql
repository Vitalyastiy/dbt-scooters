
  create view "dev_m0z9"."dbt"."events_full__dbt_tmp"
    
    
  as (
    select
    *
from
    "dev_m0z9"."dbt"."events_clean"
    left join "dev_m0z9"."dbt"."event_types"
        using (type_id)
  );