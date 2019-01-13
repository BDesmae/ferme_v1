# Donnez le rendement de viande par élevage et par nom d’animal.

SELECT p.fkelevage, p.annee, p.quantite, a.nom FROM productionviande p
INNER JOIN elevage e ON e.idelevage = p.fkelevage
INNER JOIN animal a ON a.idanimal = e.fkanimal
ORDER BY p.fkelevage;