SELECT 
    customername, country
FROM
    customers
WHERE
    country = 'USA' OR country = 'France';

SELECT 
    customername, country, credtlimit
FROM
    customers
WHERE
    (country = 'USA' OR country = 'France')
        AND creditLimit > 100000
        

