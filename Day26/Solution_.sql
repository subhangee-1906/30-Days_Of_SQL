-- Fetch names with first letter of occupation
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS result
FROM OCCUPATIONS
ORDER BY Name;

-- Fetch count of each occupation, sorted by count then alphabetically
SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') AS result
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
