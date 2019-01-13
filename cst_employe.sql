# Créez une contrainte qui empêche un employé occupant le poste 11 de s’occuper d’une culture autre que 112 et 232.

DROP TRIGGER IF EXISTS cst_empl;

CREATE TRIGGER cst_empl
BEFORE UPDATE 
ON employe
FOR EACH ROW
BEGIN 
IF fkposte = 11
END 