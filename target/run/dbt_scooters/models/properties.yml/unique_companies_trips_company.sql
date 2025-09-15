
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    company as unique_field,
    count(*) as n_records

from "dev_o0af"."dbt"."companies_trips"
where company is not null
group by company
having count(*) > 1



  
  
      
    ) dbt_internal_test