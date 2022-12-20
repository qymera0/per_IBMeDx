SELECT DISTINCT
    lastName
FROM
    employees
ORDER BY 
	lastName;

/*
NULL cases
*/

SELECT DISTINCT
    state
FROM
    customers;
    
/*
Multiple columns
*/

SELECT DISTINCT
    state, city
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY state , city;
