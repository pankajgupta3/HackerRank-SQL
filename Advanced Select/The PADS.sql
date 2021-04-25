SELECT CONCAT(Name, '(', SUBSTRING(Occupation, 1, 1), ')') 
FROM OCCUPATIONS 
ORDER BY Name;
SELECT CONCAT('There are a total of ', COUNT(1), ' ', LOWER(Occupation), 's.') 
FROM OCCUPATIONS 
GROUP BY occupation 
ORDER BY COUNT(1), Occupation;