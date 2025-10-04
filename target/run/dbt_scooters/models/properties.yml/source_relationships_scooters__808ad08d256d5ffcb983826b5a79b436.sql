
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select user_id as from_field
    from "dev_h8qz"."scooters_raw"."trips"
    where user_id is not null
),

parent as (
    select id as to_field
    from "dev_h8qz"."scooters_raw"."users"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test