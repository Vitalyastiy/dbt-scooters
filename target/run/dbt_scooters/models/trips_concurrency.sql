
      insert into "dev_ohwk"."dbt"."trips_concurrency" ("timestamp", "concurrency")
    (
        select "timestamp", "concurrency"
        from "trips_concurrency__dbt_tmp162434109283"
    )


  