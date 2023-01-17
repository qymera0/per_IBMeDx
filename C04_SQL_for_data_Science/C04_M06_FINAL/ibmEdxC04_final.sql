/* PROBLEM 01*/

SELECT COUNT(DISTINCT id) FROM CHICAGO_CRIME_DATA;

/* PROBLEM 02*/

SELECT COMMUNITY_AREA_NUMBER, COMMUNITY_AREA_NAME FROM CENSUS_DATA
	WHERE PER_CAPITA_INCOME < 11000;
	
/* PROBLEM 03*/

SELECT CASE_NUMBER FROM CHICAGO_CRIME_DATA 
	WHERE DESCRIPTION LIKE '%MINOR%';
	
/* PROBLEM 04*/

SELECT CASE_NUMBER FROM CHICAGO_CRIME_DATA 
	WHERE 
		PRIMARY_TYPE = 'KIDNAPPING' AND 
		DESCRIPTION LIKE '%CHILD%';

/* PROBLEM 05*/

SELECT DISTINCT(PRIMARY_TYPE) FROM CHICAGO_CRIME_DATA 
	WHERE LOCATION_DESCRIPTION LIKE '%SCHOOL%';
	
/* PROBELM 06 */

SELECT "Elementary, Middle, or High School" AS SCHOOL_TYPE, AVG(SAFETY_SCORE) AS AVG_SAFETY FROM CHICAGO_PUBLIC_SCHOOLS
	GROUP BY "Elementary, Middle, or High School";
	
/* PROBLEM 07*/

SELECT COMMUNITY_AREA_NAME AS COMU_NAME, PERCENT_HOUSEHOLDS_BELOW_POVERTY AS BELOW_POV FROM CENSUS_DATA 
	ORDER BY BELOW_POV DESC
	FETCH FIRST 5 ROWS ONLY;
	
/* PROBLEM 08 */

SELECT CCD.COMMUNITY_AREA_NUMBER AS A_NUMBER, COMMUNITY_AREA_NAME AS A_NAME, COUNT(*) AS N_CRIME 
	FROM CHICAGO_CRIME_DATA AS CCD
	JOIN CENSUS_DATA AS CD
		ON CCD.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER
	GROUP BY CCD.COMMUNITY_AREA_NUMBER, COMMUNITY_AREA_NAME
	ORDER BY N_CRIME DESC
	LIMIT 1;
	
/* PROBLEM 09 */

SELECT COMMUNITY_AREA_NAME, HARDSHIP_INDEX FROM CENSUS_DATA 
	WHERE HARDSHIP_INDEX = (
		select MAX(HARDSHIP_INDEX) from CENSUS_DATA
	);
	
/* PROBLEM 10 */
	
SELECT COMMUNITY_AREA_NUMBER AS A_NUMBER, COMMUNITY_AREA_NAME AS A_NAME
	FROM CENSUS_DATA	
	WHERE COMMUNITY_AREA_NUMBER = (
		select COMMUNITY_AREA_NUMBER from CHICAGO_CRIME_DATA 
		group by COMMUNITY_AREA_NUMBER
		order by count(*)
		limit 1
	);
