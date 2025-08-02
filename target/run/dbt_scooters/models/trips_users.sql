
      insert into "dev_ohwk"."dbt"."trips_users" ("id", "user_id", "scooter_hw_id", "started_at", "finished_at", "start_lat", "start_lon", "finish_lat", "finish_lon", "distance_m", "price_rub", "duration_s", "is_free", "date", "sex", "age")
    (
        select "id", "user_id", "scooter_hw_id", "started_at", "finished_at", "start_lat", "start_lon", "finish_lat", "finish_lon", "distance_m", "price_rub", "duration_s", "is_free", "date", "sex", "age"
        from "trips_users__dbt_tmp214409054701"
    )


  