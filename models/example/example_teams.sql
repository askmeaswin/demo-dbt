with teams as (
    select * from {{ ref('team_location') }};
)