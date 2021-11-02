with teams as (
    select * from ref{{ref('team_locations')}}
)