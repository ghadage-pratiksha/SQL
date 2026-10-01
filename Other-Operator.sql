SELECT * FROM employee3;

--Find employees where the email is NULL(if Applicable)
SELECT first_name, last_name, department
FROM employee3
WHERE department  IS NULL;

--List employees sorted by salary in DESCENDING order.
SELECT first_name, last_name, salary
FROM employee3
ORDER BY salary DESC;

--Retrive the top 5 heighest-paid employees.
SELECT first_name, last_name, salary
FROM employee3
ORDER BY salary ASC
LIMIT 5;

--Retrieve a list of unique department.
SELECT DISTINCT department
FROM employee3;

--Count unique department
SELECT COUNT (DISTINCT department) AS DEP_UNIQUE_COUNT
FROM employee3;
