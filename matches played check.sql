SELECT name,season, count(stage) AS matches
FROM Match
JOIN League
ON Match.league_id = League.id
GROUP BY 1,2
ORDER BY 1,2

