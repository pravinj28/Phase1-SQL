create table car2 (
	id INT,
	make VARCHAR(50),
	model VARCHAR(50),
	price NUMERIC(10,2)
);

insert into car2 (id, make, model, price) values (1, 'Chevrolet', 'Colorado', 35200.0);
insert into car2 (id, make, model, price) values (2, 'Lexus', 'LX', 1000.0);
insert into car2 (id, make, model, price) values (3, 'Dodge', 'Spirit', 34900.0);
insert into car2 (id, make, model, price) values (4, 'Mazda', 'Familia', 3900.0);
insert into car2 (id, make, model, price) values (5, 'Nissan', '300ZX', 72400.0);
insert into car2 (id, make, model, price) values (6, 'Chevrolet', 'Venture', 40500.0);
insert into car2 (id, make, model, price) values (7, 'Chrysler', 'LeBaron', 61400.0);
insert into car2 (id, make, model, price) values (8, 'GMC', '2500 Club Coupe', 92600.0);
insert into car2 (id, make, model, price) values (9, 'Mitsubishi', 'Mirage', 10500.0);
insert into car2 (id, make, model, price) values (10, 'Volvo', 'V50', 93600.0);
insert into car2 (id, make, model, price) values (11, 'Toyota', 'Sienna', 36800.0);
insert into car2 (id, make, model, price) values (12, 'BMW', 'M3', 30300.0);
insert into car2 (id, make, model, price) values (13, 'Chrysler', 'Town & Country', 44600.0);
insert into car2 (id, make, model, price) values (14, 'Mercedes-Benz', 'GL-Class', 73600.0);
insert into car2 (id, make, model, price) values (15, 'Volkswagen', 'Jetta', 58300.0);
insert into car2 (id, make, model, price) values (16, 'Nissan', 'Quest', 49800.0);
insert into car2 (id, make, model, price) values (17, 'Nissan', 'Maxima', 23800.0);
insert into car2 (id, make, model, price) values (18, 'Honda', 'CR-V', 82200.0);
insert into car2 (id, make, model, price) values (19, 'Saturn', 'S-Series', 9100.0);
insert into car2 (id, make, model, price) values (20, 'Cadillac', 'CTS-V', 55100.0);
insert into car2 (id, make, model, price) values (21, 'Jeep', 'Commander', 15400.0);
insert into car2 (id, make, model, price) values (22, 'Subaru', 'Outback', 60400.0);
insert into car2 (id, make, model, price) values (23, 'Pontiac', 'Grand Prix', 41300.0);
insert into car2 (id, make, model, price) values (24, 'GMC', 'Savana 1500', 7400.0);
insert into car2 (id, make, model, price) values (25, 'Chevrolet', 'G-Series G30', 2300.0);
insert into car2 (id, make, model, price) values (26, 'Chevrolet', 'Suburban 1500', 51100.0);
insert into car2 (id, make, model, price) values (27, 'Jeep', 'Wrangler', 76300.0);
insert into car2 (id, make, model, price) values (28, 'Mercury', 'Mountaineer', 47100.0);
insert into car2 (id, make, model, price) values (29, 'Saturn', 'Astra', 28400.0);
insert into car2 (id, make, model, price) values (30, 'Ford', 'F-Series', 100000.0);
insert into car2 (id, make, model, price) values (31, 'Mazda', 'Navajo', 1700.0);
insert into car2 (id, make, model, price) values (32, 'Land Rover', 'Defender', 84300.0);
insert into car2 (id, make, model, price) values (33, 'Chevrolet', 'Blazer', 87500.0);
insert into car2 (id, make, model, price) values (34, 'Ford', 'Focus', 25400.0);
insert into car2 (id, make, model, price) values (35, 'Volvo', 'V50', 40000.0);
insert into car2 (id, make, model, price) values (36, 'Chevrolet', 'Caprice', 35600.0);
insert into car2 (id, make, model, price) values (37, 'Audi', 'R8', 69300.0);
insert into car2 (id, make, model, price) values (38, 'Kia', 'Optima', 35000.0);
insert into car2 (id, make, model, price) values (39, 'GMC', '2500 Club Coupe', 67300.0);
insert into car2 (id, make, model, price) values (40, 'Ford', 'Mustang', 34900.0);
insert into car2 (id, make, model, price) values (41, 'Lincoln', 'MKT', 12100.0);
insert into car2 (id, make, model, price) values (42, 'Mazda', 'MX-6', 98700.0);
insert into car2 (id, make, model, price) values (43, 'Infiniti', 'IPL G', 73900.0);
insert into car2 (id, make, model, price) values (44, 'Chevrolet', 'Silverado 2500', 67500.0);
insert into car2 (id, make, model, price) values (45, 'Ford', 'Taurus', 1600.0);
insert into car2 (id, make, model, price) values (46, 'Mitsubishi', 'Mighty Max', 26100.0);
insert into car2 (id, make, model, price) values (47, 'Porsche', 'Boxster', 41000.0);
insert into car2 (id, make, model, price) values (48, 'Toyota', 'Sequoia', 99900.0);
insert into car2 (id, make, model, price) values (49, 'Chevrolet', 'Corvette', 50100.0);
insert into car2 (id, make, model, price) values (50, 'Hyundai', 'Elantra', 76400.0);

SELECT * FROM car2;

SELECT MAX(price) FROM car2;

SELECT MIN(price) FROM car2;

SELECT AVG(price) FROM car2;

SELECT ROUND(AVG(price)) FROM car2;

SELECT make, model, MIN(price) FROM car2 GROUP BY make, model;

SELECT make, model, MAX(price) FROM car2 GROUP BY make, model;

SELECT make , MAX(price) FROM car2 GROUP BY make;

SELECT SUM(price) FROM car2;

SELECT make, SUM(price) FROM car2 GROUP BY make;

SELECT 10 + 2;

SELECT 10 - 2;

SELECT 10 % 3; --This is modulas function and it gives us the remainder of division

SELECT id, make, model, price, ROUND(price * .10, 2) FROM car2; --This will give you the 10 percent value to each car

SELECT id, make, model, price AS original_price, ROUND(price * .10, 2) AS ten_percent_value, ROUND(price - (price * .10)) AS discount_after_10_percent FROM car2;

SELECT COALESCE(1) AS number; --OUPUT number 1

SELECT COALESCE(NULL, NULL, 1, 10) AS number; --It will still give you 1 only because it finds the very first value, which present in the array.

SELECT * FROM practice;

--If we want to change the null values in email to email not provided

SELECT COALESCE(email, 'Email Not provided') FROM practice;

SELECT NULLIF(10, 10); -- Result is Null

SELECT NULLIF(10, 1); -- Result is 10

SELECT 10/NULLIF(2, 9) ;

SELECT NOW();

SELECT NOW():: DATE;

SELECT NOW():: TIME;

SELECT NOW() - INTERVAL ' 1 YEAR' ;

SELECT NOW() - INTERVAL ' 3 MONTHS' ;

SELECT first_name, last_name, gender, country_of_birth, date_of_birth FROM practice;

SELECT first_name, last_name, gender, country_of_birth, date_of_birth, AGE(NOW(), date_of_birth) AS age FROM practice;

SELECT first_name,
       last_name,
       EXTRACT(YEAR FROM AGE(date_of_birth)) AS age_years
FROM practice;


UPDATE practice SET email = 'ommar@gmail.com' WHERE id = 42;

SELECT * FROM practice ;

UPDATE practice SET first_name ='Omar', last_name = 'Montana', email = 'omar.montana@hotmail.com' WHERE id = 42;

SELECT * FROM practice WHERE id = 42;

SELECT * FROM practice WHERE id = 12;

INSERT INTO person (id, first_name)
VALUES (1, 'Anne')
ON CONFLICT (id) DO NOTHING;

INSERT INTO practice(id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES(
	2017, 'Russ', 'Roddoch', 'Male', 'rrduddoch@hhs.gov', DATE '1952-09-25', 'Norway'
) ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;
--This does not works

INSERT INTO practice(id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES(
	2017, 'Russ', 'Roddoch', 'Male', 'rrduddoch@hhs.uk', DATE '1952-09-25', 'Norway'
) ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;
--This works

INSERT INTO practice(id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES(
	2017, 'Russ', 'Roddoch', 'Male', 'rrduddoch@hhs.gov', DATE '1952-09-25', 'Norway'
) ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email, last_name = EXCLUDED.last_name. first_name = EXCLUDED.first_name;

SELECT tablename --To see all the tables
FROM pg_tables
WHERE schemaname = 'public';












