
  create view "dev_ohwk"."dbt"."events_stat__dbt_tmp"
    
    
  as (
    select
    count("type" = 'cancel_search' or null)
      / cast(count("type" = 'start_search' or null) as float)
      * 100 as cancel_pct
from
    "dev_ohwk"."dbt"."events_full"
  );