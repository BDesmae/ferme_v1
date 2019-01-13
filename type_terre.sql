# Quel est le nom du type de terre le plus présent selon la surface de terrain.

SELECT tt.nom, sum(te.surface) AS 'Surface totale' FROM type_terre tt
INNER JOIN terrain te ON tt.idtype_terre = te.fktype_terre
GROUP BY tt.nom
ORDER BY 'Surface totale' DESC LIMIT 1;
