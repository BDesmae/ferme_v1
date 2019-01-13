# Listez par culture les produits de traitement utilisés et leurs quantités.

SELECT DISTINCT c.idculture, p.nom, t.qtx FROM traitement t
INNER JOIN culture c ON t.fkculture = c.idculture
INNER JOIN terrain te ON c.fkterrain = te.idterrain
INNER JOIN elevage e ON e.fkterrain = te.idterrain
INNER JOIN produit p ON p.idproduit = t.fkproduit
ORDER BY idculture;