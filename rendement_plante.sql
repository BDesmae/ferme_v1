# quantités de viandes ou de plante qui ont été produites divisée par leur nombres

SELECT fkplante, sum(rendement)/count(fkplante) AS rendement, annee, idculture
FROM ferme.culture
group by fkplante;