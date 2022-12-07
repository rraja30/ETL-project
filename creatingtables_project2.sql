DROP TABLE infrastructure; 
DROP TABLE accidents; 

create table infrastructure(
	OBJECTID int PRIMARY key NOT NULL, 
	STREETNAME  varchar(50) NOT NULL, 
	TYPE varchar(40) NOT NULL
)

create table accidents(
	id serial,
	STREET_NAME varchar(50) NOT NULL, 
	BICYCLISTS INT NOT NULL, 
	INJURIES INT NOT NULL,
	MAJOR_INJURIES INT NOT NULL
)