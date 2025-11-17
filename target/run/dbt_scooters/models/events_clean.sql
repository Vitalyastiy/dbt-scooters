delete from "dev_m0z9"."dbt"."events_clean" as DBT_INTERNAL_DEST
where (USER_ID, TIMESTAMP, TYPE_ID) in (
    select distinct
        USER_ID,
        TIMESTAMP,
        TYPE_ID
    from "events_clean__dbt_tmp192454089685" as DBT_INTERNAL_SOURCE
);


insert into "dev_m0z9"."dbt"."events_clean" (
    "user_id", "timestamp", "type_id", "updated_at"
)
(
    select
        "user_id",
        "timestamp",
        "type_id",
        "updated_at"
    from "events_clean__dbt_tmp192454089685"
)
