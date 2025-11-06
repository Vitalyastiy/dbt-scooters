
  
    

  create  table "dev_m0z9"."dbt"."time_spine_daily__dbt_tmp"
  
  
    as
  
  (
    with days as (
    


    


    with rawdata as (

        

    

    with p as (
        select 0 as generated_number union all select 1
    ), unioned as (

    select

    
    p0.generated_number * power(2, 0)
     + 
    
    p1.generated_number * power(2, 1)
     + 
    
    p2.generated_number * power(2, 2)
     + 
    
    p3.generated_number * power(2, 3)
     + 
    
    p4.generated_number * power(2, 4)
     + 
    
    p5.generated_number * power(2, 5)
     + 
    
    p6.generated_number * power(2, 6)
    
    
    + 1
    as generated_number

    from

    
    p as p0
     cross join 
    
    p as p1
     cross join 
    
    p as p2
     cross join 
    
    p as p3
     cross join 
    
    p as p4
     cross join 
    
    p as p5
     cross join 
    
    p as p6
    
    

    )

    select *
    from unioned
    where generated_number <= 91
    order by generated_number



    ),

    all_periods as (

        select (
            

    date '2023-06-01' + ((interval '1 day') * (row_number() over (order by 1) - 1))


        ) as date_day
        from rawdata

    ),

    filtered as (

        select *
        from all_periods
        where date_day <= date '2023-08-31'

    )

    select * from filtered


),
final as (
    select cast(date_day as date) as date_day
    from days
)
select *
from final
  );
  