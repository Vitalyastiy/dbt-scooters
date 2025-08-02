
  create view "dev_ohwk"."dbt"."events_full__dbt_tmp"
    
    
  as (
    select
    *
from
    "dev_ohwk"."dbt"."events_clean"
    left join "dev_ohwk"."dbt"."event_types"
        using (type_id)
  );