# Donnez la liste pour chaque type de terre de la question précédente.

SELECT tt.nom, sum(te.surface) AS 'Surface totale' FROM type_terre tt
INNER JOIN terrain te ON tt.idtype_terre = te.fktype_terre
GROUP BY tt.nom;