
      insert into "dev_ohwk"."dbt"."events_clean" ("user_id", "timestamp", "type_id")
    (
        select "user_id", "timestamp", "type_id"
        from "events_clean__dbt_tmp155328553067"
    )


  