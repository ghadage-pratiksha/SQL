SELECT * FROM employee;

INSERT INTO employee(name,position,department,hire_date,salary)
	VALUES('Ajit Sharma','Data Analyst','Data Science','2026-05-15',65000.00),
	('Pratiksha Ghadage', 'Python Developer', 'IT', '2026-06-10', 45000.00),
	('Rahul Patil', 'Software Engineer', 'Development', '2026-04-20', 55000.00),
	('Sneha Joshi', 'HR Executive', 'Human Resources', '2026-07-05', 40000.00),
	('Amit Kulkarni', 'Data Scientist', 'Data Science', '2026-03-12', 75000.00);

ALTER TABLE employee
RENAME COLUMN posiition TO position;


TRUNCATE TABLE employee;
TRUNCATE TABLE employee RESTART IDENTITY;

	