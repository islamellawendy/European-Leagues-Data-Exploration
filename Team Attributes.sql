SELECT *
FROM Team_Attributes ta
JOIN Team t
ON t.team_api_id = ta.team_api_id
ORDER BY 3,4