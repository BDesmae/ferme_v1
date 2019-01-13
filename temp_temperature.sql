-- Pour les températures appliquez la règle suivante :
-- Si la température moyenne est supérieure à la maximale alors il faut les intervertir.
-- Si la température moyenne est égale à la maximale, alors la température moyenne est égale à la moyenne du mini et du max.


DROP TABLE IF EXISTS temp;

CREATE TABLE temp
(
date varchar(45),
mini int(10),
terrain int(10) unsigned,
maxi int(10),
moyenne int(10)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/temperature.csv'
INTO TABLE temp
FIELDS TERMINATED BY ',' 
ENCLOSED BY '\n' 
IGNORE 1 LINES