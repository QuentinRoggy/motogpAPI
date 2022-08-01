
BEGIN;

INSERT INTO nationality(nationality, country_code)
VALUES
('French','FRA'),
('Spain','ESP'),
('Italia','ITA'),
('Portugal','POR'),
('America','USA'),
('Japan','JPA'),
('Qatar','QAT'),
('Indonesia','IDN'),
('Argentina','ARG'),
('Germany','DEU'),
('Netherlands','NLD'),
('United Kingdom','GBR'),
('Austria','AUT'),
('Thailand','THA'),
('Australia','AUS'),
('Malaysia', 'MYS'),
('South Africa','ZAF');

INSERT INTO championship("name")
VALUES
  ('Moto GP'),
  ('Moto 2'),
  ('Moto 3');

INSERT INTO manufacturer("name", model, "engine")
VALUES
('Yamaha','M1','4 Cyl'),
('Ducati','Desmocedici','V4'),
('Honda','RC213V','V4'),
('Suzuki','GSXR-R','4 Cyl'),
('KTM','RC 16','V4'),
('Aprilia','RS-GP','V4');

INSERT INTO team("name",manufacturer_id,is_official,championship_id)
VALUES
('Aprilia Racing',6,true,1),
('Ducati Lenovo Team',2,true,1),
('Gresini Racing MotoGP',2,false,1),
('LCR Honda',3,false,1),
('Prima Pramac Racing',2,false,1),
('Repsol Honda Team',3,true,1),
('Monster Energy Yamaha MotoGP',1,true,1),
('Red Bull KTM Factory Racing',5,true,1),
('Team Suzuki Ecstar',4,true,1),
('Tech3 KTM Factory Racing',5,false,1),
('WithU Yamaha RNF MotoGP Team',1,false,1),
('Mooney VR46 Racing Team',2,false,1);

INSERT INTO competitor(last_name, first_name, race_number, gender, birthday, nationality_id, team_id)
VALUES
('Oliveira','Miguel',88,'Male','1995-01-03T23:00:00.000Z',4,8),
('Martin','Jorge',89,'Male','1998-01-28T23:00:00.000Z',2,5),
('Divizioso','Andrea',04,'Male','1986-02-22T23:00:00.000Z',3,11),
('Marquez','Marc',93,'Male','1993-02-16T23:00:00.000Z',2,6),
('Zarco','Johann',5,'Male','1990-07-15T22:00:00.000Z',1,5),
('Quartararo','Fabio',20,'Male','1999-04-19T22:00:00.000Z',1,7),
('Espargaro','Pol',44,'Male','1991-06-09T22:00:00.000Z',2,6),
('Bradl','Stefan',6,'Male','1989-11-28T23:00:00.000Z',11,6),
('Marini','Luca',10,'Male','1997-08-09T22:00:00.000Z',3,12),
('Viñales','Maverick',12,'Male','1995-01-11T23:00:00.000Z',2,1),
('Gardner','Remy',87,'Male','1998-02-23T23:00:00.000Z',15,10),
('Marquez','Alex',73,'Male','1996-04-22T22:00:00.000Z',2,4),
('Morbidelli','Franco',21,'Male','1994-12-03T23:00:00.000Z',3,7),
('Bastianini','Enea',23,'Male','1997-12-29T23:00:00.000Z',3,3),
('Fernandez','Raul',25,'Male','2000-10-22T22:00:00.000Z',2,10),
('Nakagami','Takaaki',30,'Male','1992-02-08T23:00:00.000Z',7,4),
('Savadori','Lorenzo',32,'Male','1993-04-03T22:00:00.000Z',3,1),
('Binder','Brad',33,'Male','1995-08-10T22:00:00.000Z',17,8),
('Mir','Joan',36,'Male','1997-08-31T22:00:00.000Z',2,9),
('Binder','Darryn', 40,'Male','1998-01-20T23:00:00.000Z',17,11),
('Espargaro','Aleix',41,'Male','1989-07-29T22:00:00.000Z',2,1),
('Rins','Alex',42,'Male','1995-12-07T23:00:00.000Z',2,9),
('Miller','Jack',43,'Male','1995-01-17T23:00:00.000Z',15,2),
('Di Giannantonio','Fabio',49,'Male','1998-10-09T22:00:00.000Z',3,3),
('Pirro','Michele',51,'Male','1986-07-04T22:00:00.000Z',3,2),
('Bagnaia','Francesco',63,'Male','1997-01-13T23:00:00.000Z',3,2),
('Bezzecchi','Marco',72,'Male','1998-11-11T23:00:00.000Z',3,12);
INSERT INTO season("name")
VALUES
('2022');

INSERT INTO track("name", city, url_official, curves_left,curves_right, "length", country_id)
VALUES
('Lusail International Circuit','Doha','https://www.circuitlosail.com/',6,10,5400,8),
('Pertamina Mandalika Circuit','Mandalika','https://themandalikagp.com/home',6,11,4300,9),
('Termas de Río Hondo','Termas de Río Hondo','http://www.autodromotermas.com/',5,9,4800,10),
('Circuit of the Americas','Austin','http://www.circuitoftheamericas.com/',11,9,5500,6),
('Autodromo Internacional do Algarve','Portimao','https://autodromodoalgarve.com/',6,9,4600,4),
('Circuito de Jerez','Jerez','http://www.circuitodejerez.com/',5,8,4400,2),
('Circuit Bugatti','Le Mans','https://www.gpfrancemoto.com/',5,9,4200,1),
('Autodormo del Mugello','Scarperia','http://www.mugellocircuit.it',6,9,5200,3),
('Circuito de Catalonia','Barcelona','http://www.circuitcat.com/en/',6,8,4700,2),
('Sachsenring','Chemmitz','http://www.adac.de/motogp',10,3,3700,11),
('TT Assen Circuit','Assen','http://www.ttcircuit.com',6,12,4500,12),
('Silverstone','Towcester','http://www.silverstone.co.uk/',8,10,5900,5),
('Red Bull Ring','Spielberg','https://www.projekt-spielberg.com/en',3,7,4300,13),
('Misano World Circuit “Marco Simoncelli”','Rivieira Di Rimini','http://www.misanocircuit.com/?lang=eng',6,10,4200,3),
('MotorLand Aragon','Teruel','http://www.motorlandaragon.com',10,7,5100,2),
('Motegi','Tochigi','http://www.twinring.jp/english/',6,8,4800,7),
('Chang International Circuit','Buriram','https://www.bric.co.th/',5,7,4600,14),
('Philip Island Circuit','Melbourne','https://www.phillipislandcircuit.com.au/',7,5,4400,15),
('Sepang International Circuit','Sepang','http://www.sepangcircuit.com/',5,10,5500,16),
('Circuit Ricardo Tormo','Cheste','http://www.circuitvalencia.com/',9,5,4000,2);

INSERT INTO stage("name", scheduled, scheduled_end, "status", track_id)
VALUES
('Grand Prix of Qatar','2022-03-03T23:00:00.000Z','2022-03-05T23:00:00.000Z','Completed',1),
('Pertimina Grand Prix of Inodnesia','2022-03-17T23:00:00.000Z','2022-03-19T23:00:00.000Z','Completed',2),
('Gran Premio Michelin de la Republica Argentina','2022-03-31T22:00:00.000Z','2022-04-02T22:00:00.000Z','Completed',3),
('Red Bull Grand Prix of the Americas','2022-04-07T22:00:00.000Z','2022-04-09T22:00:00.000Z','Completed',4),
('Grande Prémio Tissot de Portugal','2022-04-21T22:00:00.000Z','2022-04-23T22:00:00.000Z','Completed',5),
('Gran Premio Red Bull de España','2022-04-28T22:00:00.000Z','2022-04-30T22:00:00.000Z','Completed',6),
('Shark Grand Prix de France','2022-05-12T22:00:00.000Z','2022-05-14T22:00:00.000Z','Completed',7),
('Gran Premio Italia Oakley','2022-05-26T22:00:00.000Z','2022-05-28T22:00:00.000Z','Completed',8),
('Gran Premi Monster Energy de Catanlunya','2022-06-02T22:00:00.000Z','2022-06-04T22:00:00.000Z','Completed',9),
('Liqui Moly Motorrad Grand Prix Deutschland','2022-06-16T22:00:00.000Z','2022-06-18T22:00:00.000Z','Completed',10),
('Motul TT Assen','2022-06-23T22:00:00.000Z','2022-06-25T22:00:00.000Z','Completed',11),
('Monster Energy British Grand Prix','2022-08-04T22:00:00.000Z','2022-08-06T22:00:00.000Z','Scheduled',12),
('Motorrad Grand Prix von Österreich','2022-08-18T22:00:00.000Z','2022-08-20T22:00:00.000Z','Scheduled',13),
('Grand Premio di San Marino e della Riviera di Rimini','2022-09-01T22:00:00.000Z','2022-09-03T22:00:00.000Z','Scheduled',14),
('Grand Premio Animoca Brands de Aragon','2022-09-15T22:00:00.000Z','2022-09-17T22:00:00.000Z','Scheduled',15),
('Motul Grand Prix oj Japan','2022-09-22T22:00:00.000Z','2022-09-24T22:00:00.000Z','Scheduled',16),
('Thailand Grand Prix','2022-09-29T22:00:00.000Z','2022-10-01T22:00:00.000Z','Scheduled',17),
('Animoca Brands Australian Motorcycle Grand Prix','2022-10-13T22:00:00.000Z','2022-10-15T22:00:00.000Z','Scheduled',18),
('Petronas Grand Prix of Malaysia','2022-10-20T22:00:00.000Z','2022-10-22T22:00:00.000Z','Scheduled',19),
('Gran Premio Motul de la Comunitat Valenciana','2022-11-03T23:00:00.000Z','2022-11-05T23:00:00.000Z','Scheduled',20);

INSERT INTO session_type("name","type")
VALUES
('Race', 'RAC'),
('Warm up', 'WUP'),
('Qualifying 2', 'Q2'),
('Qualifying 1', 'Q1'),
('Free practice 4', 'FP4'),
('Free practice 3', 'FP3'),
('Free practice 2', 'FP2'),
('Free practice 1', 'FP1');

INSERT INTO "session"("type_id", "status", stage_id,championship_id)VALUES(1, 'completed', 1,1),(2, 'completed', 1,1),(3, 'completed', 1,1),(4, 'completed', 1,1),(5, 'completed', 1,1),(6, 'completed', 1,1),(7, 'completed', 1,1),(8, 'completed', 1,1),(1, 'completed', 2,1),(2, 'completed', 2,1),(3, 'completed', 2,1),(4, 'completed', 2,1),(5, 'completed', 2,1),(6, 'completed', 2,1),(7, 'completed', 2,1),(8, 'completed', 2,1),(1, 'completed', 3,1),(2, 'completed', 3,1),(3, 'completed', 3,1),(4, 'completed', 3,1),(5, 'completed', 3,1),(6, 'completed', 3,1),(7, 'completed', 3,1),(8, 'completed', 3,1),(1, 'completed', 4,1),(2, 'completed', 4,1),(3, 'completed', 4,1),(4, 'completed', 4,1),(5, 'completed', 4,1),(6, 'completed', 4,1),(7, 'completed', 4,1),(8, 'completed', 4,1),(1, 'completed', 6,1),(2, 'completed', 6,1),(3, 'completed', 6,1),(4, 'completed', 6,1),(5, 'completed', 6,1),(6, 'completed', 6,1),(7, 'completed', 6,1),(8, 'completed', 6,1),(1, 'completed', 7,1),(2, 'completed', 7,1),(3, 'completed', 7,1),(4, 'completed', 7,1),(5, 'completed', 7,1),(6, 'completed', 7,1),(7, 'completed', 7,1),(8, 'completed', 7,1),(1, 'completed', 8,1),(2, 'completed', 8,1),(3, 'completed', 8,1),(4, 'completed', 8,1),(5, 'completed', 8,1),(6, 'completed', 8,1),(7, 'completed', 8,1),(8, 'completed', 8,1),(1, 'completed', 9,1),(2, 'completed', 9,1),(3, 'completed', 9,1),(4, 'completed', 9,1),(5, 'completed', 9,1),(6, 'completed', 9,1),(7, 'completed', 9,1),(8, 'completed', 9,1),(1, 'completed', 10,1),(2, 'completed', 10,1),(3, 'completed', 10,1),(4, 'completed', 10,1),(5, 'completed', 10,1),(6, 'completed', 10,1),(7, 'completed', 10,1),(8, 'completed', 10,1),(1, 'completed', 11,1),(2, 'completed', 11,1),(3, 'completed', 11,1),(4, 'completed', 11,1),(5, 'completed', 11,1),(6, 'completed', 11,1),(7, 'completed', 11,1),(8, 'completed', 11,1),(1, 'completed', 12,1),(2, 'completed', 12,1),(3, 'completed', 12,1),(4, 'completed', 12,1),(5, 'completed', 12,1),(6, 'completed', 12,1),(7, 'completed', 12,1),(8, 'completed', 12,1),(1, 'completed', 13,1),(2, 'completed', 13,1),(3, 'completed', 13,1),(4, 'completed', 13,1),(5, 'completed', 13,1),(6, 'completed', 13,1),(7, 'completed', 13,1),(8, 'completed', 13,1),(1, 'completed', 14,1),(2, 'completed', 14,1),(3, 'completed', 14,1),(4, 'completed', 14,1),(5, 'completed', 14,1),(6, 'completed', 14,1),(7, 'completed', 14,1),(8, 'completed', 14,1),(1, 'completed', 15,1),(2, 'completed', 15,1),(3, 'completed', 15,1),(4, 'completed', 15,1),(5, 'completed', 15,1),(6, 'completed', 15,1),(7, 'completed', 15,1),(8, 'completed', 15,1),(1, 'completed', 16,1),(2, 'completed', 16,1),(3, 'completed', 16,1),(4, 'completed', 16,1),(5, 'completed', 16,1),(6, 'completed', 16,1),(7, 'completed', 16,1),(8, 'completed', 16,1),(1, 'completed', 17,1),(2, 'completed', 17,1),(3, 'completed', 17,1),(4, 'completed', 17,1),(5, 'completed', 17,1),(6, 'completed', 17,1),(7, 'completed', 17,1),(8, 'completed', 17,1),(1, 'completed', 18,1),(2, 'completed', 18,1),(3, 'completed', 18,1),(4, 'completed', 18,1),(5, 'completed', 18,1),(6, 'completed', 18,1),(7, 'completed', 18,1),(8, 'completed', 18,1),(1, 'completed', 19,1),(2, 'completed', 19,1),(3, 'completed', 19,1),(4, 'completed', 19,1),(5, 'completed', 19,1),(6, 'completed', 19,1),(7, 'completed', 19,1),(8, 'completed', 19,1),(1, 'completed', 20,1),(2, 'completed', 20,1),(3, 'completed', 20,1),(4, 'completed', 20,1),(5, 'completed', 20,1),(6, 'completed', 20,1),(7, 'completed', 20,1),(8, 'completed', 20,1);

INSERT INTO position(position, points)VALUES('1', 25),('2', 20),('3', 16),('4', 13),('5', 11),('6', 10),('7', 9),('8', 8),('9', 7),('10', 6),('11', 5),('12', 4),('13', 3),('14', 2),('15', 1),('16', 0),('17', 0),('18', 0),('19', 0),('20', 0),('21', 0),('22', 0),('23', 0),('24', 0),('25', 0),('26', 0),('27', 0),('28', 0),('29', 0),('30', 0),('AB', 0),('DNF', 0);


COMMIT;

