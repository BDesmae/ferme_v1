

CREATE TABLE precipitation
(
saison varchar(10),
annee int(4),
terrain int(10) unsigned,
precipitation int(10)
);

INSERT INTO precipitation SELECT * FROM temp;