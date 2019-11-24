SELECT league_id, stage, season, match_api_id, home_team_goal, away_team_goal,
CASE 
		WHEN home_team_goal = away_team_goal THEN "d"
		WHEN home_team_goal > away_team_goal THEN "w"
		WHEN home_team_goal < away_team_goal THEN "w"
		END AS result,
CASE
		WHEN home_team_goal > away_team_goal THEN 1
		ELSE 0 END AS home_win,
CASE
		WHEN home_team_goal < away_team_goal THEN 1
		ELSE 0 END AS away_win
FROM Match
ORDER BY 2
