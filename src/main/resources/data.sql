-- One admin user, named admin1 with passwor 4dm1n and authority admin
INSERT INTO authorities(id,authority) VALUES (1,'ADMIN');
INSERT INTO appusers(id,username,password,mazo,isNarrator,authority) VALUES (1,'admin1','$2a$10$nMmTWAhPTqXqLDJTag3prumFrAJpsYtroxf0ojesFYq0k4PmcbWUS',null,null,1);

-- Three clinic owners, with password "clinic_owner"
INSERT INTO authorities(id,authority) VALUES (2,'CLINIC_OWNER');

-- Ten owner user, named owner1 with passwor 0wn3r
INSERT INTO authorities(id,authority) VALUES (3,'OWNER');

-- One vet user, named vet1 with passwor v3t
/*INSERT INTO users(username,password,enabled) VALUES ('vet1','v3t',TRUE);
INSERT INTO authorities(id,username,authority) VALUES (12,'vet1','veterinarian');*/
INSERT INTO authorities(id,authority) VALUES (4,'VET');

-- Three players, with password "dixit"
INSERT INTO authorities(id,authority) VALUES (5,'USER');
INSERT INTO appusers(id,username,password,mazo,isNarrator,authority) VALUES (2,'dixit','$2a$12$UJ7bIFszrid1XInk0dKaGOOZ/T12/Xdnmid4OOtp7oSMAsBDyZKBC',null,null,2);

INSERT INTO appusers(id,username,password,mazo,isNarrator,authority) VALUES (3,'dixit2','$2a$12$UJ7bIFszrid1XInk0dKaGOOZ/T12/Xdnmid4OOtp7oSMAsBDyZKBC',null,null,2);

INSERT INTO appusers(id,username,password,mazo,isNarrator,authority) VALUES (4,'dixit3','$2a$12$UJ7bIFszrid1XInk0dKaGOOZ/T12/Xdnmid4OOtp7oSMAsBDyZKBC',null,null,2);

INSERT INTO cards(id,design) VALUES (1,'../../../../frontend/src/static/images/card/card1.jpg');
INSERT INTO cards(id,design) VALUES (2,'../../../../frontend/src/static/images/card/card2.jpg');
INSERT INTO cards(id,design) VALUES (3,'../../../../frontend/src/static/images/card/card3.jpg');
INSERT INTO cards(id,design) VALUES (4,'../../../../frontend/src/static/images/card/card4.jpg');
INSERT INTO cards(id,design) VALUES (5,'../../../../frontend/src/static/images/card/card5.jpg');
INSERT INTO cards(id,design) VALUES (6,'../../../../frontend/src/static/images/card/card6.jpg');
INSERT INTO cards(id,design) VALUES (7,'../../../../frontend/src/static/images/card/card7.jpg');
INSERT INTO cards(id,design) VALUES (8,'../../../../frontend/src/static/images/card/card8.jpg');
INSERT INTO cards(id,design) VALUES (9,'../../../../frontend/src/static/images/card/card9.jpg');
INSERT INTO cards(id,design) VALUES (10,'../../../../frontend/src/static/images/card/card10.jpg');
INSERT INTO cards(id,design) VALUES (11,'../../../../frontend/src/static/images/card/card11.jpg');
INSERT INTO cards(id,design) VALUES (12,'../../../../frontend/src/static/images/card/card12.jpg');
INSERT INTO cards(id,design) VALUES (13,'../../../../frontend/src/static/images/card/card13.jpg');
INSERT INTO cards(id,design) VALUES (14,'../../../../frontend/src/static/images/card/card14.jpg');
INSERT INTO cards(id,design) VALUES (15,'../../../../frontend/src/static/images/card/card15.jpg');
INSERT INTO cards(id,design) VALUES (16,'../../../../frontend/src/static/images/card/card16.jpg');
INSERT INTO cards(id,design) VALUES (17,'../../../../frontend/src/static/images/card/card17.jpg');
INSERT INTO cards(id,design) VALUES (18,'../../../../frontend/src/static/images/card/card18.jpg');
INSERT INTO cards(id,design) VALUES (19,'../../../../frontend/src/static/images/card/card19.jpg');
INSERT INTO cards(id,design) VALUES (20,'../../../../frontend/src/static/images/card/card20.jpg');
INSERT INTO cards(id,design) VALUES (21,'../../../../frontend/src/static/images/card/card21.jpg');
INSERT INTO cards(id,design) VALUES (22,'../../../../frontend/src/static/images/card/card22.jpg');
INSERT INTO cards(id,design) VALUES (23,'../../../../frontend/src/static/images/card/card23.jpg');
INSERT INTO cards(id,design) VALUES (24,'../../../../frontend/src/static/images/card/card24.jpg');
INSERT INTO cards(id,design) VALUES (25,'../../../../frontend/src/static/images/card/card25.jpg');
INSERT INTO cards(id,design) VALUES (26,'../../../../frontend/src/static/images/card/card26.jpg');
INSERT INTO cards(id,design) VALUES (27,'../../../../frontend/src/static/images/card/card27.jpg');
INSERT INTO cards(id,design) VALUES (28,'../../../../frontend/src/static/images/card/card28.jpg');
INSERT INTO cards(id,design) VALUES (29,'../../../../frontend/src/static/images/card/card29.jpg');
INSERT INTO cards(id,design) VALUES (30,'../../../../frontend/src/static/images/card/card30.jpg');
INSERT INTO cards(id,design) VALUES (31,'../../../../frontend/src/static/images/card/card31.jpg');
INSERT INTO cards(id,design) VALUES (32,'../../../../frontend/src/static/images/card/card32.jpg');
INSERT INTO cards(id,design) VALUES (33,'../../../../frontend/src/static/images/card/card33.jpg');
INSERT INTO cards(id,design) VALUES (34,'../../../../frontend/src/static/images/card/card34.jpg');
INSERT INTO cards(id,design) VALUES (35,'../../../../frontend/src/static/images/card/card35.jpg');
INSERT INTO cards(id,design) VALUES (36,'../../../../frontend/src/static/images/card/card36.jpg');
