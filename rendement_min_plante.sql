SELECT p.nom, min(c.rendement) as max 
FROM culture c
INNER JOIN plante p ON c.fkplante = p.idplante;