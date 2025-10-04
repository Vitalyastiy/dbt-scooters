
select distinct
    user_id,
    "timestamp",
    type_id,
    
    now() as updated_at

from
    "dev_h8qz"."scooters_raw"."events"
where

    
        "timestamp" > (select max("timestamp") from "dev_h8qz"."dbt"."events_clean")
    
