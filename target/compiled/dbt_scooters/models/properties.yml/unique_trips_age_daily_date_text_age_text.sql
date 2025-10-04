
    
    

select
    date::text || age::text as unique_field,
    count(*) as n_records

from "dev_h8qz"."dbt"."trips_age_daily"
where date::text || age::text is not null
group by date::text || age::text
having count(*) > 1


