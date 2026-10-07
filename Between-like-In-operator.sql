SELECT *From employee3;

--Retrives employee whose salary is between 40,000 and 60,000 - Use BETWEEN operators
SELECT * FROM employee3
WHERE salary BETWEEN 40000 AND 60000;


--Find employees whose Department isend with ing --Use LIKE operator
SELECT * FROM employee3
WHERE department LIKE '%ing';
--WHERE department LIKE 'M%';   start with A
--Retrieve employees who belong to either the 'Finance' or 'Marketing' department - Use IN operator
SELECT * FROM employee3
WHERE department IN ('Finance','Marketing');