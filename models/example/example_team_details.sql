with teams as (

    select * from {{ ref('example_teams') }}
),

team_locations as (

    select * from {{ ref('team_location') }}   
),

final as (
    select teams.team,
    trim(team_location.city) as city,
    trim(team_location.state) as state,
    teams.team = '{{ var("current_winner") }}' as is_champion

    from teams

    left join team_location
    on team_location.name = teams.team
)

select * from final
