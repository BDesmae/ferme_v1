# Donnez la fonction qui permet selon l’élevage et la plante de donner la quantité de plante consommée.

DROP FUNCTION IF EXISTS qtt_plante;

DELIMITER $$

CREATE FUNCTION qtt_plante(elevage int(10), plante varchar(45))
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE qtt int;
SELECT a.qtx into qtt from alimentation a
INNER JOIN plante pl ON a.fkplante = pl.idplante
INNER JOIN animal an ON a.fkanimal = an.idanimal
INNER JOIN elevage e ON e.fkanimal = an.idanimal
WHERE e.idelevage = elevage AND pl.nom = plante;

RETURN qtt;

END $$

DELIMITER ;

SELECT qtt_plante('6', 'Millet');