-- Module 7 Challenge
-- Deliverable 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;
-- Check the Table
SELECT * FROM retirement_titles
SELECT count(*) FROM retirement_titles; --133,776

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
-- Check the Table
SELECT * FROM unique_titles;

SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC
-- Check the Table
SELECT * FROM retiring_titles;

-- Deliverable 2
-- Mentorship Eligibility
SELECT DISTINCT ON (emp_no) e.emp_no, 
	e. first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;
-- Check the Table
SELECT * FROM mentorship_eligibility;
SELECT count(*) FROM mentorship_eligibility; -- 1549
