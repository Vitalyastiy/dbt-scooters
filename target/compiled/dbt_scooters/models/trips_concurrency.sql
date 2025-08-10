with
unnest_cte as (
    -- Unnest trip to two rows: start and finish events
    select
        unnest(array[started_at, finished_at]) as "timestamp",
        unnest(array[1, -1]) as increment
    from
        "dev_ohwk"."scooters_raw"."trips"
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
    
        "timestamp" > (select max("timestamp") from "dev_ohwk"."dbt"."trips_concurrency")
    
    group by
        1
    
    union all
    select
        "timestamp",
        concurrency as increment,
        false as preserve_row
    from
        "dev_ohwk"."dbt"."trips_concurrency"
    where
        "timestamp" = (select max("timestamp") from "dev_ohwk"."dbt"."trips_concurrency")
    
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