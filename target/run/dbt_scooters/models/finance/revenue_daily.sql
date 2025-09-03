
      
        delete from "dev_o0af"."finance"."revenue_daily" as DBT_INTERNAL_DEST
        where (date) in (
            select distinct date
            from "revenue_daily__dbt_tmp212849664344" as DBT_INTERNAL_SOURCE
        );

    

    insert into "dev_o0af"."finance"."revenue_daily" ("revenue_rub", "date", "updated_at")
    (
        select "revenue_rub", "date", "updated_at"
        from "revenue_daily__dbt_tmp212849664344"
    )
  