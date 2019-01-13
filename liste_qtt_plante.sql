# Donnez la liste des quantités de plante consommées annuellement par animal et élevage.
# >> la table alimentation donne les quantités (qtx) de plante pour une année en kg et pour un seul animal.

SELECT DISTINCT e.idelevage, an.nom, al.qtx, p.nom, al.annee FROM elevage e
INNER JOIN animal an ON e.fkanimal = an.idanimal
INNER JOIN alimentation al ON al.fkanimal = an.idanimal
INNER JOIN plante p ON p.idplante = al.fkplante
ORDER BY idelevage;