create table "dev_m0z9"."dbt"."sex_age_pivot__dbt_tmp"

as

(
    select
        age,

        sum(

            case
                when sex = 'M'
                    then 1
                else 0
            end
        )

            as "M"

        ,

        sum(

            case
                when sex = 'F'
                    then 1
                else 0
            end
        )

            as "F"

    from
        "dev_m0z9"."dbt"."trips_users"
    group by
        1
    order by
        1
);
