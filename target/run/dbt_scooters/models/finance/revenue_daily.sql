
      
        delete from "dev_m0z9"."dbt"."revenue_daily" as DBT_INTERNAL_DEST
        where (date) in (
            select distinct date
            from "revenue_daily__dbt_tmp100811750619" as DBT_INTERNAL_SOURCE
        );

    

    insert into "dev_m0z9"."dbt"."revenue_daily" ("revenue_rub", "date", "updated_at")
    (
        select "revenue_rub", "date", "updated_at"
        from "revenue_daily__dbt_tmp100811750619"
    )
  