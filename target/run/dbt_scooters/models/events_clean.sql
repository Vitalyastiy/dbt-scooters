
      
  
    

  create  table "dev_m0z9"."dbt"."events_clean"
  
  
    as
  
  (
    
select distinct
    user_id,
    "timestamp",
    type_id,
    
    now() as updated_at

from
    "dev_m0z9"."scooters_raw"."events"
where

    "timestamp" < timestamp '2023-08-01'

  );
  
  