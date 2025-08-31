
  create view "dev_o0af"."dbt"."events_full__dbt_tmp"
    
    
  as (
    select
    *
from
    "dev_o0af"."dbt"."events_clean"
    left join "dev_o0af"."dbt"."event_types"
        using (type_id)
  );