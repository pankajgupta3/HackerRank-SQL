SELECT NAME FROM STUDENTS WHERE Marks > 75 ORDER BY SUBSTRING(NAME, -3, 3), ID;

/*
SELECT NAME FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(NAME, 3), ID;
*/