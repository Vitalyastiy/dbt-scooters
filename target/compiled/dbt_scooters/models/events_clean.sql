
select distinct
    user_id,
    "timestamp",
    type_id,
    
    now() as updated_at

from
    "dev_m0z9"."scooters_raw"."events"
where

    
        "timestamp" > (select max("timestamp") from "dev_m0z9"."dbt"."events_clean")
    
