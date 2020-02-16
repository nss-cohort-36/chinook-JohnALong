-- query for employees who are sales agents  *excludes management*

SELECT *
FROM Employee e 
WHERE e.Title LIKE '%sale%agent%';

