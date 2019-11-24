WITH t1 AS(SELECT league_id, name, season, stage,match_api_id, home_team_api_id, team_short_name AS home_short, team_long_name AS home_long, away_team_api_id, home_team_goal, away_team_goal
           FROM Match m
           JOIN League l
           ON l.id = m.league_id
           JOIN Team t
           ON m.home_team_api_id = t.team_api_id),
     t2 AS (SELECT *
	        FROM Team)
SELECT league_id, name, season, stage,match_api_id, home_short, home_long, team_short_name AS away_short, team_long_name AS away_long, home_team_goal, away_team_goal
FROM t1
JOIN t2
ON t2.team_api_id = t1.away_team_api_id