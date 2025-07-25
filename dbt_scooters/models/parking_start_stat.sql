select
    st_transform(hex.geom, 4326) as geom,
    count(*) as trips
from
    {{ ref("trips_geom") }} as t
cross join
    st_hexagongrid(500, st_transform(t.start_point, 3857)) as hex
where
    st_intersects(st_transform(t.start_point, 3857), hex.geom)
group by
    1


