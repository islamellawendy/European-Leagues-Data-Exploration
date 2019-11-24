SELECT l.name AS lge, l.id
FROM League l
JOIN Country c
ON c.id = l.country_id