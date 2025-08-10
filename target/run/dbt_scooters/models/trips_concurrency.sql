
      insert into "dev_ohwk"."dbt"."trips_concurrency" ("timestamp", "concurrency", "updated_at")
    (
        select "timestamp", "concurrency", "updated_at"
        from "trips_concurrency__dbt_tmp215832357726"
    )


  