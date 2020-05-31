SELECT * 
FROM startups;

/*total number of companies in table*/ 
SELECT COUNT(*)
FROM startups;

/*total value of all companies*/
SELECT SUM(valuation)
FROM startups;

/*highest amount raised by a startup during 'Seed' stage*/
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

/*olders company on the list*/
SELECT MIN(founded)
FROM startups;

/*average valuation*/
SELECT AVG(valuation) 
FROM startups;

/*average valuation in each category, rounded to 2dp ordered from highest to lowest valuation*/
SELECT category, ROUND(AVG(valuation),2) 
FROM startups
GROUP BY category
ORDER BY 2 DESC;

/*number of companies per category in descending order*/
SELECT category, COUNT(name)
FROM startups
GROUP BY category
HAVING COUNT(name)>3
ORDER BY 2 DESC;

/*average startup size per location employing more than 500 people*/
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees)>500;
