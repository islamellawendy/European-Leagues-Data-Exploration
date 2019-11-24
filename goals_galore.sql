WITH t1 AS (SELECT l.id, c.name, l.name AS lge
FROM League l
JOIN Country c
ON c.id = l.country_id
Where l.id = 1729 OR l.id = 10257 OR l.id = 21518),
t2 AS (SELECT league_id, season, (sum(home_team_goal)+sum(away_team_goal)) AS goals
FROM Match
GROUP BY 1,2)

SELECT t1.lge AS leag, avg(t2.goals) as avge
FROM t1
JOIN t2
ON t2.league_id = t1.id
GROUP BY 1