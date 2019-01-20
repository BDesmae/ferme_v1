SELECT fkplante, avg(rendement), annee, idculture 
FROM ferme.culture
group by fkplante;