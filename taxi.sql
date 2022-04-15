CREATE DATABASE jorgo_taxi;
\c jorgo_taxi
CREATE TABLE automobile (
    make varchar(20),
    model varchar(20),
    fuel varchar(20),
    obem_dvig varchar(20),
    tip_korobki_peredach  varchar(20),
    yeaar int,
    color varchar(10)
);
CREATE TABLE voditel (
    first_name varchar(10),
    last_name varchar(40),
    born varchar(20),
    vodit_staj int,
    gender varchar(20)  
);
CREATE TABLE operator (
    first_name varchar(10),
    last_name varchar(40),
    born varchar(20),
    gender varchar(20)  
)
INSERT INTO automobile VALUES ('auto make1','auto model','бензин','в литрах','механика',1999,'black'),
('auto make2','auto model','бензин','в литрах','механика',1999,'white'),
('auto make3','auto model','бензин','в kW для электромобилей','механика',1981,'red'),
('Toyota','Camry','дизель','в литрах','автомат',1972,'green'),
('auto make5','auto model','электричество','в литрах','автомат',1969,'pink'),
('Toyota','Camry','дизель','в литрах','автомат',1959,'blue'),
('Mercedes','auto model','бензин','в литрах','механика',1955,'brown'),
('auto make8','auto model','бензин','в литрах','автомат',1977,'grey'),
('Mercedes','auto model','дизель','в kW для электромобилей','автомат',1992,'yellow'),
('auto make10','auto model','электричество','в литрах','автомат',1993,'orange');
INSERT INTO voditel VALUES ('name1','lname1','1999г 15 апреля',10,'male' ),
('Азамат','Азаматов','1999г 15 апреля',1,'male' ),
('name3','lname3','1999г 15 апреля',5,'female' ,)
('name4','lname4','1999г 15 апреля',10,'male' ),
('name5','lname5','1999г 15 апреля',15,'female'),
('name6','lname6','1999г 15 апреля',24,'male' ),
('name7','lname7','1999г 15 апреля',30,'male' ),
('name8','lname8','1999г 15 апреля',40,'female' ),
('name9','lname9','1999г 15 апреля',1,'male' ),
('name10','lname10','1999г 15 апреля',8,'male' );
INSERT INTO operator VALUES('name1','lname1','1222year 12 may','male'),
('name2','lname2','1222year 12 may','male'),
('name3','lname3','1222year 12 may','male'),
('name4','lname4','1222year 12 may','male'),
('name5','lname5','1222year 12 may','male'),
('name6','lname6','1222year 12 may','male'),
('name7','lname7','1222year 12 may','male'),
('name8','lname8','1222year 12 may','male'),
('name9','lname9','1222year 12 may','male'),
('name10','lname10','1222year 12 may','male');
SELECT *FROM automobile WHERE make='Toyota' and model='Camry' ORDER BY yeaar DESC
SELECT DISTINCT first_name FROM operator ORDER BY first_name DESC LIMIT 10 OFFSET 5
UPDATE automobile SET make='Mercedes' ON make='Mersus';
DELETE *FROM voditel WHERE first_name='Азамат' AND last_name='Азаматов';
SELECT COUNT(*) FROM voditel WHERE vodit_staj>10 AND gender='female';
SELECT voditel.first_name ,automobile.make FROM voditel JOIN automobile ;