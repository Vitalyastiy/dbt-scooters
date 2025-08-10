
      insert into "dev_ohwk"."dbt"."events_clean" ("user_id", "timestamp", "type_id", "updated_at")
    (
        select "user_id", "timestamp", "type_id", "updated_at"
        from "events_clean__dbt_tmp215832354677"
    )


  