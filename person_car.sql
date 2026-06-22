CREATE TABLE car3 (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    price INT NOT NULL
);

INSERT INTO car3 (make, model, price) VALUES ('Toyota', 'Camry', 25000),
('Honda', 'Civic', 20000),
('Ford', 'Mustang', 30000);

CREATE TABLE person3 (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,	
	email VARCHAR(50),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
    car_id BIGINT REFERENCES car3(id), -- This is a foreign key
    UNIQUE(car_id)
);



INSERT INTO person3 (first_name, last_name, gender, email, date_of_birth, country_of_birth) VALUES ('John', 'Doe', 'male', 'd4D7o@example.com', '1990-01-01', 'USA'),
('Jane', 'Doe', 'female', 'B4A1e@example.com', '1991-02-02', 'Canada'),
('Bob', 'Smith', 'male', 'bob@gmail.com' , '1992-03-03', 'Australia'),
('Alice', 'Jones', 'female', 'tK5QH@example.com', '1993-04-04', 'New Zealand'),
('Charlie', 'Brown', 'male', 'Ow0yH@example.com', '1994-05-05', 'Brazil');

SELECT * FROM person3;
SELECT * FROM car3;

UPDATE person3 SET car_id = 1 WHERE id = 11;

UPDATE person3 SET car_id = 2 WHERE id = 13;

UPDATE person3 SET car_id = 3 WHERE id = 12;

UPDATE person3 SET car_id = 4 WHERE id = 12;

SELECT * FROM person3;
SELECT * FROM car3;

SELECT * FROM person3
JOIN car3 ON person3.car_id = car3.id;

SELECT * FROM person3
LEFT JOIN car3 ON car_id = person3.car_id;

SELECT * FROM person3 WHERE car_id IS NULL;

SELECT * FROM person3
LEFT JOIN car3 ON car_id = person3.car_id WHERE car. * IS NULL;






