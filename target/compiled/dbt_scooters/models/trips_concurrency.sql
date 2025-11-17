with
unnest_cte as (
    -- Unnest trip to two rows: start and finish events
    select
        unnest(array[started_at, finished_at]) as "timestamp",
        unnest(array[1, -1]) as increment
    from
        "dev_m0z9"."scooters_raw"."trips"
),

sum_cte as (
    -- Make timestamp unique, group increments, add initial concurrency from history
    select
        "timestamp",
        sum(increment) as increment,
        true as preserve_row
    from
        unnest_cte
    where

        "timestamp"
        < (date '2023-06-01' + interval '7' hour) at time zone 'Europe/Moscow'

    group by
        1

),

cumsum_cte as (
    -- Integrate increment to get concurrency
    select
        "timestamp",
        sum(increment) over (order by "timestamp") as concurrency,
        preserve_row
    from
        sum_cte
)

select
    "timestamp",
    concurrency,

    now() as updated_at

from
    cumsum_cte
where
    preserve_row
order by
    1
