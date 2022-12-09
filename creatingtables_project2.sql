DROP TABLE infrastructure; 
DROP TABLE accidents; 

create table infrastructure(
	objectid int PRIMARY key NOT NULL, 
	street_name_lane  varchar(50) NOT NULL, 
	lane_type varchar(40) NOT NULL
)

create table accidents(
	id serial,
	street_name varchar(100) NOT NULL, 
	bicyclists INT NOT NULL, 
	injuries INT NOT NULL,
	major_injuries INT NOT NULL, 
	street_name_clean varchar(100) NOT NULL
)

select accidents.street_name_clean,infrastructure.objectid,infrastructure.street_name_lane, infrastructure.lane_type, accidents.id, accidents.bicyclists, accidents.injuries, accidents.major_injuries, accidents.street_name
from accidents
inner join infrastructure
on infrastructure.street_name_lane = accidents.street_name_clean;