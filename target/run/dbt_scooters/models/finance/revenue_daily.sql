
      
        delete from "dev_ohwk"."dbt_finance"."revenue_daily" as DBT_INTERNAL_DEST
        where (date) in (
            select distinct date
            from "revenue_daily__dbt_tmp182234266710" as DBT_INTERNAL_SOURCE
        );

    

    insert into "dev_ohwk"."dbt_finance"."revenue_daily" ("revenue_rub", "date", "updated_at")
    (
        select "revenue_rub", "date", "updated_at"
        from "revenue_daily__dbt_tmp182234266710"
    )
  