
      
        delete from "dev_ohwk"."dbt"."revenue_daily" as DBT_INTERNAL_DEST
        where (date) in (
            select distinct date
            from "revenue_daily__dbt_tmp204328199917" as DBT_INTERNAL_SOURCE
        );

    

    insert into "dev_ohwk"."dbt"."revenue_daily" ("revenue_rub", "date", "updated_at")
    (
        select "revenue_rub", "date", "updated_at"
        from "revenue_daily__dbt_tmp204328199917"
    )
  