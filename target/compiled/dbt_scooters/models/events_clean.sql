select distinct
    user_id,
    "timestamp",
    type_id,
    
    now() as updated_at

from
    "dev_ohwk"."scooters_raw"."events"
where

    "timestamp" > (select max("timestamp") from "dev_ohwk"."dbt"."events_clean")
