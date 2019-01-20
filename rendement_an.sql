# quantités de viandes ou de plante qui ont été produites divisée par leur nombres
# la quantité dans production viande  divisé par la capacité dans elevage

SELECT e.idelevage, sum(p.quantite)/count(e.capacite) AS rendement, p.annee
FROM elevage e
INNER JOIN productionviande p ON e.idelevage = p.fkelevage
group by idelevage, annee;