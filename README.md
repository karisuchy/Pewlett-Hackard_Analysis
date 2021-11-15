# Pewlett-Hackard_Analysis

## Overview

The purpose of the new analysis is to help Pewlet-Hackard prepare for the expected 'silver tnsami' when a large portion of their workforce retire over the next few years. My goal is to help them understand:
- Who will be retiring? 
- How many positions will PH need to fill?

In addition, Mentoring program: experienced and successful employees stepping back into a part-time role instead of retiring completely. Their new role in the company would be as a mentor to the recently hired employees.

To accomplish this task, I used the data stored on six different tables to create an SQL database. 


## Resources 
- Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: PostgreSQL 11, pgAdmin 4, Quick DBD

## Results

### Questionable Data
Based on the csv files  provided, all active employees were born druing the 28 year period between 2/1/1965 and 1/24/1993. The csv files also show that 76,383 (32%) of current employees earn exactly $40,000 annually. Prior to the compan making decisions or taking action based on this analysis, I recommend a review of the data is perfomred by the Finance and Human Relations departments.   

### Importance of Names
The names of the tables used for this exercise could easily lead to incorrect conclusions. For example, there is a a table titled current_emp that most people would assume includes a list of all current employees. However, this table was based on a retirement table so only includes current employees that were born between January 1, 1952 and December 31, 1955 AND were hired between January 1, 1985 and December 31, 1988. 

Providing management with inaccurate information is worse than providing no information at all since it could lead to decisions that are not in PH's best interest. 

### Retiring Employees
Unfortunately, because the position titles are so generic throughout the company, it is difficult to get a detailed picture of future needs. Some information  that can be determined includes:
- The number of employees elgible for retirement package is 90,398 (unique_title). this list is compromised of emloyees that meet the following criteria: 
    - end date of 1-1-99 which indicates they are current employees of PH
    - born between January 1, 1952 through December 31, 1955
- The breakdown by job classification is: 
    - Senior Engineers (29,414)
    - Senior Staff (28,254)
    - Engineer (14,222)
    - Staff (12,243)
    - Tehcnical Leader (4502)
    - Assistant Engineer (1761)
    - Manager (2)

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
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

### 
Query shows 10,504 (32%) of the PH's 33,118 current RETIRMENT ELIGIBLE ((check this out) employees have an salary of 40,000. This data should be verified with the Human Resources and/or Finance Teams.   

### Table Naming Standards
PH should develop naming standards that require programmers to use table names that correctly reflect the information contained within. At times, this will require slightly longer names but with the use of aliases while writing code, the long-term negative impact to programmers will be minimal. This change would greatly decrease the likelihood of providing incorrect information. 

### Generic Titles
I recommend PH revise their position title structure to eliminate generic labels such as 'Manager' and 'Staff'. Managers of different departments have very different job responsibilities and require different knowledge, skills, and abilities. Position titles should provide some indication of job responsibilties such as: "Finance Manager" or "Marketing Manager". 

All information is available for review on Git Hub. 
