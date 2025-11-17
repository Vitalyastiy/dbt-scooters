with __dbt__cte__events_stream as (

    select
        type as event_type,
        user_id as user_id,
        date("timestamp") as event_date
    from "dev_m0z9"."dbt"."events_full"
    where 1 = 1

),

event_stream as (select * from __dbt__cte__events_stream

),

first_event_users as (
    select
        user_id,

        min(event_date) as first_event_date
    from event_stream
    group by 1
),

first_events as (
    select count(*) as unique_users_total
    from first_event_users

),

secondary_events_0 as (
    select
        0 as period,

        count(distinct event_stream.user_id) as unique_users
    from event_stream
    inner join first_event_users
        on event_stream.user_id = first_event_users.user_id

    where
        event_type = 'book_scooter'
        and event_date

        >= first_event_date + ((interval '1 day') * (0))

    group by period
),

secondary_events_1 as (
    select
        1 as period,

        count(distinct event_stream.user_id) as unique_users
    from event_stream
    inner join first_event_users
        on event_stream.user_id = first_event_users.user_id

    where
        event_type = 'book_scooter'
        and event_date

        >= first_event_date + ((interval '1 day') * (1))

    group by period
),

secondary_events_7 as (
    select
        7 as period,

        count(distinct event_stream.user_id) as unique_users
    from event_stream
    inner join first_event_users
        on event_stream.user_id = first_event_users.user_id

    where
        event_type = 'book_scooter'
        and event_date

        >= first_event_date + ((interval '1 day') * (7))

    group by period
),

secondary_events_14 as (
    select
        14 as period,

        count(distinct event_stream.user_id) as unique_users
    from event_stream
    inner join first_event_users
        on event_stream.user_id = first_event_users.user_id

    where
        event_type = 'book_scooter'
        and event_date

        >= first_event_date + ((interval '1 day') * (14))

    group by period
),

secondary_events_30 as (
    select
        30 as period,

        count(distinct event_stream.user_id) as unique_users
    from event_stream
    inner join first_event_users
        on event_stream.user_id = first_event_users.user_id

    where
        event_type = 'book_scooter'
        and event_date

        >= first_event_date + ((interval '1 day') * (30))

    group by period
),

secondary_events_60 as (
    select
        60 as period,

        count(distinct event_stream.user_id) as unique_users
    from event_stream
    inner join first_event_users
        on event_stream.user_id = first_event_users.user_id

    where
        event_type = 'book_scooter'
        and event_date

        >= first_event_date + ((interval '1 day') * (60))

    group by period
),

secondary_events_120 as (
    select
        120 as period,

        count(distinct event_stream.user_id) as unique_users
    from event_stream
    inner join first_event_users
        on event_stream.user_id = first_event_users.user_id

    where
        event_type = 'book_scooter'
        and event_date

        >= first_event_date + ((interval '1 day') * (120))

    group by period
),

final as (
    select
        period,

        unique_users,
        1.0 * unique_users / unique_users_total as pct_users
    from first_events
    left join (

        select * from secondary_events_0

        union all

        select * from secondary_events_1

        union all

        select * from secondary_events_7

        union all

        select * from secondary_events_14

        union all

        select * from secondary_events_30

        union all

        select * from secondary_events_60

        union all

        select * from secondary_events_120

    ) secondary_events on 1 = 1

)

select * from final
