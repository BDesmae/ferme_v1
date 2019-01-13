DROP TABLE IF EXISTS temp;

CREATE TABLE temp
(
saison varchar(10),
annee int(4),
terrain int(10) unsigned,
precipitation int(10)
);


#SET @@global.local_infile = 1;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pluie.csv' 
INTO TABLE temp
FIELDS TERMINATED BY ',' 
ENCLOSED BY '\n' 
IGNORE 1 LINES
(saison, annee, @terrain, @precipitation)
SET 
 terrain = 	if(@terrain like 'treize', 13, 
			if(@terrain like 'quinze', 15,
            if(@terrain like 'dix sept', 17,
            if(@terrain like 'vingt quatre', 24,
            if(@terrain like 'vingt cinq', 25,
            if(@terrain like 'trente trois', 33,
            if(@terrain like 'quarante et un', 41,
            if(@terrain like 'quarante quatre', 44,
            if(@terrain like 'quarante sept', 47,
            if(@terrain like 'soixante sept', 67,
            if(@terrain like 'soixante neuf', 69,
            if(@terrain like 'quatre vingt', 80, @terrain
 )))))))))))),
 precipitation = 	if(not @precipitation , 0,
						if(@precipitation > 2300 AND @precipitation < 5500, 
							if(saison = 'automne', @precipation/10, 
								if(saison = 'ete', @precipitation/100, @precipitation)),@precipitation)); 
 
 

     
--  -Si le niveau est entre 2300 et 5500 dans ces cas le niveau des précipitations est égale :
-- Si la saison est l’automne le niveau réel = niveau tropicale divise par 10
-- Si la saison est l’été le niveau réel = niveau tropicale divise par 100
-- - Au-delà de 5500 le niveau est égale a la moyenne des précipitations de la saison et de la date, sinon 200mm.
--  
--  

