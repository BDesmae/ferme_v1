# Rapportez par unité de surface le résultat précèdent.
# >>Dans la table terrain l’unité de surface est l’hectare.

SELECT DISTINCT c.idculture, p.nom, t.qtx, (qtx/surface) AS 'unité de surface' FROM traitement t
INNER JOIN culture c ON t.fkculture = c.idculture
INNER JOIN terrain te ON c.fkterrain = te.idterrain
INNER JOIN elevage e ON e.fkterrain = te.idterrain
INNER JOIN produit p ON p.idproduit = t.fkproduit
ORDER BY idculture;