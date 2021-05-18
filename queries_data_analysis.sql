-- Data Analysis #1
SELECT
emp.emp_no
, emp.last_name
, emp.first_name
, emp.sex
, sal.salary
FROM Employees emp
LEFT JOIN Salaries sal 
	ON emp.emp_no = sal.emp_no
ORDER BY emp.emp_no ;

-- Data Analysis #2
SELECT
emp.first_name
, emp.last_name
, emp.hire_date
FROM employees emp
WHERE to_char(emp.hire_date, 'YYYY') = '1986';

-- Data Analysis #3
SELECT
ds.dept_no
, ds.dept_name
, dm.emp_no
, emp.last_name
, emp.first_name

FROM departments ds

LEFT JOIN DepartmentManager dm
ON ds.dept_no = dm.dept_no

LEFT JOIN Employees emp
ON dm.emp_no = emp.emp_no ;


-- Data Analysis #4
SELECT
emp.emp_no
, emp.last_name
, emp.first_name
, ds.dept_name
FROM Employees emp
LEFT JOIN DepartmentEmployee dee
ON emp.emp_no = dee.emp_no
LEFT JOIN Departments ds
ON ds.dept_no = dee.dept_no ;

-- Data Analysis #5
SELECT
emp.first_name
, emp.last_name
, emp.sex
FROM Employees emp
WHERE emp.first_name = 'Hercules' 
AND last_name like 'B%';

-- Data Analysis #6
SELECT
emp.emp_no
,emp.last_name
,emp.first_name
, ds.dept_name
FROM Employees emp

LEFT JOIN DepartmentEmployee dee
ON emp.emp_no = dee.emp_no
LEFT JOIN Departments ds
ON ds.dept_no = dee.dept_no 

WHERE ds.dept_name = 'Sales';

-- Data Analysis #7
SELECT
emp.emp_no
,emp.last_name
,emp.first_name
,ds.dept_name
FROM Employees emp

LEFT JOIN DepartmentEmployee dee
ON emp.emp_no = dee.emp_no
LEFT JOIN Departments ds
ON ds.dept_no = dee.dept_no 

WHERE ds.dept_name IN ('Sales','Development');

-- Data Analysis #8
SELECT
last_name
,count(first_name) AS Frequency

FROM Employees
GROUP BY 1
Order by 2 DESC;

-- Epilogue
-- "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

SELECT
* FROM Employees
WHERE emp_no = 499942;