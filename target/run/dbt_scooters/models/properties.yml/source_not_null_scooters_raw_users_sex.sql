
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sex
from "dev_o0af"."scooters_raw"."users"
where sex is null



  
  
      
    ) dbt_internal_test