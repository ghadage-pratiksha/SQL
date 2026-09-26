DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

SELECT *FROM users;

INSERT INTO users(username, email, age, city)VALUES
	('Pratiksha','pratiksha22@.com',21,'Pune'),
	('Priya','priya@.com',22,'Mumbai'),
	('Neha','neha@gmail.com', 23,'Satara'),
	('Sidhhi','siddhi@.com',24,'Nashik'),
	('Amit','amit@gmail.com',25,'Kolhapur');

SELECT username, city FROM users;

UPDATE users 
SET age=20
WHERE username='Pratiksha';

SELECT *FROM users;

SELECT *FROM users ORDER BY username ASC;

UPDATE users
SET city='Delhi'

--WHERE city='Pune';

WHERE age>21;

UPDATE users
SET age=31,city='Kolkata'
WHERE username='Priya'

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com'
	