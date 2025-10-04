
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        sex as value_field,
        count(*) as n_records

    from "dev_h8qz"."scooters_raw"."users"
    group by sex

)

select *
from all_values
where value_field not in (
    'M','F'
)



  
  
      
    ) dbt_internal_test