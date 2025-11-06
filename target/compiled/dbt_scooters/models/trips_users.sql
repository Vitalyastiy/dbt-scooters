select
    t.*,
    u.sex,
    extract(year from t.started_at) - extract(year from u.birth_date) as age,
    
    now() as updated_at

from
    "dev_m0z9"."dbt"."trips_prep" as t
left join
    "dev_m0z9"."scooters_raw"."users" as u
    on t.user_id = u.id

      where
          t.id <= 75000
