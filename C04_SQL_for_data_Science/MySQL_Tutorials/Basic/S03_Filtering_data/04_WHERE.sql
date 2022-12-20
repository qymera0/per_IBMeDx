/*
1) Using MySQL WHERE clause with equality operator example
*/

SELECT 
    lastname, firstname, jobtitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';

/*
2) Using MySQL WHERE clause with the AND operator
*/

SELECT 
    lastname, firstname, jobtitle, officeCode
FROM
    employees
WHERE
    jobTitle = 'Sales Rep'
        AND officeCode = 1;

/*
3) Using MySQL WHERE clause with OR operator
*/

SELECT 
    lastname, firstname, jobtitle, officeCode
FROM
    employees
WHERE
    jobTitle = 'Sales Rep' OR officeCode = 1
ORDER BY 
	officeCode , jobTitle;
    
/*
4) Using MySQL WHERE clause with the BETWEEN operator example
*/

SELECT 
    firstName, lastName, officeCode
FROM
    employees
WHERE
    officeCode BETWEEN 1 AND 3
ORDER BY 
	officeCode;
    
/*
5) Using MySQL WHERE clause with the LIKE operator example
*/

select
	firstName,
    lastName
from
	employees
where
	lastName like '%son'
order by
	firstName;

/*
6) Using MySQL WHERE clause with the IN operator example
*/

SELECT 
    firstName, lastName, officeCode
FROM
    employees
WHERE
    officeCode IN (1 , 2, 3)
ORDER BY 
	officeCode;
    
/*
7) Using MySQL WHERE clause with the IS NULL operator
*/

SELECT 
    lastName, firstName, reportsTo
FROM
    employees
WHERE
    reportsTo IS NULL;