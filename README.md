# Pewlett-Hackard_Analysis

## Overview

The purpose of the new analysis is to provide Pewlet-Hackard with the information needed to develop a well defined retirment package to those who meet certain criteria and prepare their company for the coming "silver tnsanmi" as large numbers of their employees retire. My goal is to help them understand:
Assist HR with employee research. Specific questions: 
- Who will be retiring? 
- How many positions will PH need to fill?
- Generating a list of all employees eligible for retirement package based on predetermined criteria. 

To accomplish this task, I will use the data stored on six different tables to create an SQL database. data modeling, engineering, and analysis 

Mentoring program: experienced and successful employees stepping back into a part-time role instead of retiring completely. Their new role in the company would be as a mentor to the recently hired employees.

7.3.5:
What's going on with the salaries?
Why are there only five active managers for nine departments?
Why are some employees appearing twice?
To help Bobby find these answers, we're going to create tailored lists.


## Resources 
- Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: PostgreSQL 11, pgAdmin 4, Quick DBD

## Results

### Importance of Names
The naming of tables for this exercise could easily lead to incorrect conclusions. For example, there is a a table titled current_emp that most people would assume includes a list of all current employees. However, this table was based on a retirement table so only includes currently employees that were born between January 1, 1952 and December 31, 1955 AND were hired between January 1, 1985 and December 31, 1988. 

### Retiring Employees
retiring_titles.csv
need bulleted list with 4 major points

Unfortunately, because the position titles are so generic throughout the company, it is difficult to get a detailed picture of future needs. Some information  that can be determined includes:
- The number of employees elgible for retirement package is 90,398 (unique_title). this list is compromised of emloyees that meet the following criteria: 
    - end date of xxxx which indicates they are current employees of PH
    - born between January 1, 1952 through December 31, 1955
    - Other criteria
- The breakdown by department is:
    - marketing
    - finance
    - sales
    - etc  
- The positions most impacted are: 
    - engineers
    - something else
    - something else   

-- 
-- Original table needed to be motified eo exclude employees that had left the company or are in new positions. 

--  
-  Total of 90,398 positions listed on table



![retiring_titles_chart](https://user-images.githubusercontent.com/90162669/140618850-06ef055f-bea3-4955-861e-07cdee5cd79f.png)


### Mentorship Program
mentorship_eligibility
need bulleted list with 4 major points
-  count of retiring employees is xxx 
-  section is XXX compared to XXX employees eligible for mentorship program as currently defined: 
- There are only 1549 employees eligible for mentorship. Could this program be expanded to employees in other departments? Or employees that have worked for more years at company?
- 

![mentorship_count_by_title](https://user-images.githubusercontent.com/90162669/140618844-eb003fa8-56d5-4725-9e06-fbf5072aefd0.png)

## Summary

### breakdown into subheadings if i can. 
Provide high-level responses to the following questions, then provide TWO ADDITIONAL QUERIES or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

### 
Query shows 10,504 (32%) of the PH's 33,118 current employees have an salary of 40,000. This data should be verified with the Human Resources and/or Finance Teams.   

###
PH should develop naming standards that require programmers to use table names that correctly reflect the information contained within. At times, this will require slightly longer names but with the use of aliases, the long-term negative impact to programmers will be minimal. This change would greatly decrease the likelihood of providing incorrect information. 

### Generic Titles
I recommend PH revise their position title structure to eliminate generic labels such as 'Manager' and 'Staff'. Managers of different departments have very different job responsibilities and require different knowledge, skills, and abilities. Position titles should provide some indication of job responsibilties such as: "Finance Manager" or "Marketing Manager". 

All information is available for review on Git Hub. 
