
    
    

select
    company as unique_field,
    count(*) as n_records

from "dev_o0af"."scooters_raw"."companies_trips"
where company is not null
group by company
having count(*) > 1


