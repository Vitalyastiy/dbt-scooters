
select distinct
    user_id,
    "timestamp",
    type_id,
    
    now() as updated_at

from
    "dev_o0af"."scooters_raw"."events"
where

    
        "timestamp" > (select max("timestamp") from "dev_o0af"."dbt"."events_clean")
    
