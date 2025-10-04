select
    *
from
    "dev_h8qz"."dbt"."events_clean"
    left join "dev_h8qz"."dbt"."event_types"
        using (type_id)