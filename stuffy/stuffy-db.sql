drop database if exists sqlbootcamp_stuffy;
create database sqlbootcamp_stuffy;
use sqlbootcamp_stuffy;

create table stuffy (
	stuffyid 		int 				not null primary key auto_increment,
	type			varchar(100) 		not null,
	color			varchar(20) 		not null,
	size			varchar(2)	 		not null,
	limbs	 		int					not null
	);
    
    insert into stuffy (type, color, size, limbs) values
    ("Nittany Lion","blue","M",4),
    ("snake",'green','L',0),
    ("Garfield",'orange','M',4),
    ("puppy", 'brown', 's', 4),
    ("puppy",'black','s',4),
    ("kitten",'orange','s',4),
    ('Minion','yellow','m',4),
    ('Mike','lime','m', 4),
    ('baseball','white','s',0),
    ('football','brown','m',0);
    