-- Add 5 customers into the database manually

INSERT INTO Customer VALUES(01,"Ali Can","Aydogdu","alican@company.com");
INSERT INTO Customer VALUES(02,"Zinedine","Zidane","zidane@company.com");
INSERT INTO Customer VALUES(03,"Cristiano","Ronaldo","cr7@company.com");
INSERT INTO Customer VALUES(04,"David","Beckham","beckham@company.com");
INSERT INTO Customer VALUES(05,"Sergio","Ramos","ramos@company.com");


-- Add at least 2 different order for each customer

INSERT INTO Orders VALUES (01,01,'2017-01-12');
INSERT INTO Orders VALUES (02,01,'2017-01-12');
INSERT INTO Orders VALUES (03,02,'2017-01-12');
INSERT INTO Orders VALUES (04,02,'2017-01-12');
INSERT INTO Orders VALUES (05,03,'2017-01-12');
INSERT INTO Orders VALUES (06,03,'2017-01-12');
INSERT INTO Orders VALUES (07,04,'2017-01-12');
INSERT INTO Orders VALUES (08,04,'2017-01-12');
INSERT INTO Orders VALUES (09,05,'2017-01-12');
INSERT INTO Orders VALUES (10,05,'2017-01-12');

-- Add 5 different items

INSERT INTO Item VALUES (11,'Pencil','2');
INSERT INTO Item VALUES (12,'Eraiser','1');
INSERT INTO Item VALUES (13,'Ruler','2');
INSERT INTO Item VALUES (14,'Book','5');
INSERT INTO Item VALUES (15,'Bag','8');


-- Each Order must have at least 3 different item

INSERT INTO OrderItem VALUES (1,11);
INSERT INTO OrderItem VALUES (1,12);
INSERT INTO OrderItem VALUES (1,13);

INSERT INTO OrderItem VALUES (2,12);
INSERT INTO OrderItem VALUES (2,13);
INSERT INTO OrderItem VALUES (2,14);

INSERT INTO OrderItem VALUES (3,13);
INSERT INTO OrderItem VALUES (3,14);
INSERT INTO OrderItem VALUES (3,15);

INSERT INTO OrderItem VALUES (4,11);
INSERT INTO OrderItem VALUES (4,13);
INSERT INTO OrderItem VALUES (4,15);

INSERT INTO OrderItem VALUES (5,11);
INSERT INTO OrderItem VALUES (5,12);
INSERT INTO OrderItem VALUES (5,14);

INSERT INTO OrderItem VALUES (6,11);
INSERT INTO OrderItem VALUES (6,12);
INSERT INTO OrderItem VALUES (6,15);

INSERT INTO OrderItem VALUES (7,11);
INSERT INTO OrderItem VALUES (7,13);
INSERT INTO OrderItem VALUES (7,15);

INSERT INTO OrderItem VALUES (8,11);
INSERT INTO OrderItem VALUES (8,13);
INSERT INTO OrderItem VALUES (8,14);

INSERT INTO OrderItem VALUES (9,11);
INSERT INTO OrderItem VALUES (9,13);
INSERT INTO OrderItem VALUES (9,15);

INSERT INTO OrderItem VALUES (10,12);
INSERT INTO OrderItem VALUES (10,13);
INSERT INTO OrderItem VALUES (10,15);
