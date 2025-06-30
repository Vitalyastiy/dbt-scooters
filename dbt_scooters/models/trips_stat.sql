select count(id) trips, count(distinct user_id) users
, avg(EXTRACT(EPOCH FROM (finished_at - started_at))) / 60 avg_duration_m
, sum(price)/100 revenue_rub, count(price) filter(where price = 0 or price is null)::decimal/count(id) * 100 free_trips_pct
from scooters_raw.trips