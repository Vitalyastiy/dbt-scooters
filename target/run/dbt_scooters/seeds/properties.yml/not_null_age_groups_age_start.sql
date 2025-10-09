
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select age_start
from "dev_h8qz"."dbt"."age_groups"
where age_start is null



  
  
      
    ) dbt_internal_test