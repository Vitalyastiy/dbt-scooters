
    
    

select
    company as unique_field,
    count(*) as n_records

from "dev_h8qz"."dbt"."companies_trips"
where company is not null
group by company
having count(*) > 1


