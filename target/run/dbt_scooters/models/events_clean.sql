
      
        delete from "dev_h8qz"."dbt"."events_clean" as DBT_INTERNAL_DEST
        where (user_id, timestamp, type_id) in (
            select distinct user_id, timestamp, type_id
            from "events_clean__dbt_tmp190043563275" as DBT_INTERNAL_SOURCE
        );

    

    insert into "dev_h8qz"."dbt"."events_clean" ("user_id", "timestamp", "type_id", "updated_at")
    (
        select "user_id", "timestamp", "type_id", "updated_at"
        from "events_clean__dbt_tmp190043563275"
    )
  