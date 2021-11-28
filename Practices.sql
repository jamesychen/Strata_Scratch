/* ID 10308: Salaries Differences
Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the difference in salaries.
*/

--output the difference between mark and engi
SELECT abs(max(salary) - (SELECT max(salary) 
FROM db_employee
WHERE department_id = 1
)) difference
FROM db_employee
WHERE department_id = 4

/*
ID 10299: Finding Updated Records
We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.
*/


--output id, name, department, current salary
-- calculate current salary (increase by year)

--select * from ms_employee_salary 

SELECT id, first_name, last_name, max(salary) salary, department_id
FROM ms_employee_salary 
GROUP BY 1, 2, 3, 5
ORDER BY 1
