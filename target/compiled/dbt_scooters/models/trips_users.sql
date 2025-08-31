select
    t.*,
    u.sex,
    extract(year from t.started_at) - extract(year from u.birth_date) as age,
    
    now() as updated_at

from
    "dev_o0af"."dbt"."trips_prep" as t
left join
    "dev_o0af"."scooters_raw"."users" as u
    on t.user_id = u.id

    where
        t.id > (select max(id) from "dev_o0af"."dbt"."trips_users")
    order by
        t.id
    limit
        75000
