use classicmodels;

/*
A) Using MySQL ORDER BY clause to sort the result set by one column example
*/

SELECT 
    contactLastname, contactFirstname
FROM
    customers
ORDER BY contactLastName;

SELECT 
    contactLastname, contactFirstname
FROM
    customers
ORDER BY contactLastName DESC;

/*
B) Using MySQL ORDER BY clause to sort the result set by multiple columns example
*/   

SELECT 
    contactLastname, contactFirstname
FROM
    customers
ORDER BY contactLastName DESC , contactFirstName ASC;

/*
C) Using MySQL ORDER BY clause to sort the result set by multiple columns example
*/
    
SELECT 
    orderNumber, orderlinenumber, quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY quantityOrdered * priceEach DESC;

SELECT 
    orderNumber, orderlinenumber, quantityOrdered * priceEach as subtotal 
FROM
    orderdetails
ORDER BY subtotal DESC;

select
	orderNumber, status
from
	orders
order by field(
	status,
    'In Process',
	'On Hold',
    'Cancelled',
    'Resolved',
    'Disputed',
    'Shipped'
);

/*
D) MySQL ORDER BY and NULL
*/

select
	firstName, lastName, reportsTo
from
	employees
order by
	reportsTo
