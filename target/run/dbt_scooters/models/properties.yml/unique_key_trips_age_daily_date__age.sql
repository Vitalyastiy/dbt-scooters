
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
select
    
        "date"::text ||
    
        "age"::text ||
    
    ''
from
    "dev_h8qz"."dbt"."trips_age_daily"
group by
    1
having
    count(*) > 1

  
  
      
    ) dbt_internal_test