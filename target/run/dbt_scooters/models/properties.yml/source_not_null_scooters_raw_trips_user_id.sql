
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select user_id
from "dev_m0z9"."scooters_raw"."trips"
where user_id is null



  
  
      
    ) dbt_internal_test