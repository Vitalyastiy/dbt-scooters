
select distinct
    user_id,
    "timestamp",
    type_id,
    
    now() as updated_at

from
    "dev_ohwk"."scooters_raw"."events"
where

    
        date("timestamp") = date '2023-06-01'
    
