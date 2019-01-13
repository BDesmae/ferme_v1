DROP TABLE IF EXISTS pluie;
DROP TABLE IF EXISTS temperature1;
DROP TABLE IF EXISTS temperature2;


CREATE TABLE pluie
(
id_pluie int primary key auto_increment,
saison varchar(10),
annee int(4),
terrain int(10) unsigned,
precipitation int(10)
);

CREATE TABLE temperature1
(
id_temp int primary key auto_increment,
date_temp varchar(45),
mini int(10),
maxi int(10),
moyenne int(10),
terrain int(10) unsigned
);

CREATE TABLE temperature2
(
id_temp int primary key auto_increment,
date_temp varchar(45),
mini int(10),
maxi int(10),
moyenne int(10),
terrain int(10) unsigned
);


ALTER TABLE pluie ADD FOREIGN KEY (terrain) REFERENCES terrain(idterrain);
ALTER TABLE temperature1 ADD FOREIGN KEY (terrain) REFERENCES terrain(idterrain);
ALTER TABLE temperature2 ADD FOREIGN KEY (terrain) REFERENCES terrain(idterrain);