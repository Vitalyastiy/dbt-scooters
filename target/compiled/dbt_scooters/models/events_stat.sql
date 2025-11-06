select
    count("type" = 'cancel_search' or null)
      / cast(count("type" = 'start_search' or null) as float)
      * 100 as cancel_pct
from
    "dev_m0z9"."dbt"."events_full"