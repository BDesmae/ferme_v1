DROP FUNCTION IF EXISTS ref_terrain

delimiter $$

CREATE FUNCTION ref_terrain()
RETURNS int
DETERMINISTIC
BEGIN
DECLARE terrain int default 0;
SELECT fkterrain INTO terrain FROM culture;
IF terrain < 26 THEN
UPDATE culture SET fkterrain = terrain + 25 ;
END IF;
RETURN 'ok';
END $$

delimiter ;

SELECT ref_terrain();