# Pewlett-Hackard_Analysis

## Overview

The purpose of this analysis is to help Pewlett-Hackard prepare for the expected 'silver tsunami' when a large portion of their workforce retire over the next few years. My goal was to help them understand:
- Who will be retiring? 
- How many positions will PH need to fill?

In anticipation of these retirements, PH is considering a mentoring program that would allow experienced, successful employees to step back into a part-time role instead of retiring completely. Their new role in the company would be as a mentor to the recently hired employees. Information regarding possible mentees for this program is also included. 

I used the data stored on six different tables to create an SQL database. 

## Resources 
- Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: PostgreSQL 11, pgAdmin 4, Quick DBD

## Results

### Questionable Data
Based on the csv files  provided, all active employees were born during the 28-year period between 2/1/1965 and 1/24/1993. The csv files also show that 76,383 (32%) of current employees earn exactly $40,000 annually. This information seems highly unlikely and requires further research. 

### Importance of Names
The names of the tables used for this exercise could easily lead to incorrect conclusions. For example, there is a table titled current_emp that most people would assume includes a list of all current employees. However, this table was based on a retirement table so only includes current employees that were born between January 1, 1952 and December 31, 1955 AND were hired between January 1, 1985 and December 31, 1988. Tables names should accurately reflect the information they contain.   

### Retiring Employees
Unfortunately, because the position titles are so generic throughout the company, it is difficult to get a detailed picture of future needs. Based on the data provided, it appears: 
- The number of employees eligible for retirement package is 90,398 based on the unique_title table. This table lists employees that meet the following criteria: 
    - end date of 1-1-99 which indicates they are current employees of PH
    - birth date between January 1, 1952 through December 31, 1955
- The breakdown by job classification is: 
    - Senior Engineers (29,414)
    - Senior Staff (28,254)
    - Engineer (14,222)
    - Staff (12,243)
    - Technical  Leader (4502)
    - Assistant Engineer (1761)
    - Manager (2)

![retiring_titles_chart](https://user-images.githubusercontent.com/90162669/140618850-06ef055f-bea3-4955-861e-07cdee5cd79f.png)


### Mentorship Program
Based on the data provided, it appears only 1549 employees are eligible for the mentorshiop program. HP may want to consider expanding the mentorship pool to meet its future needs. 

![mentorship_count_by_title](https://user-images.githubusercontent.com/90162669/140618844-eb003fa8-56d5-4725-9e06-fbf5072aefd0.png)

## Summary
Providing management with inaccurate information is worse than providing no information at all since it could lead to decisions that are not in PH's best interest. I strongly recommend additional analysis of the core data that was provided prior to any further analysis or actions. Once the steps below are taken, the analysis can be performed again so PH has the needed information to prepare for the anticipated retirements.  

### Verify Data Accuracy
Some of the data that was provided in the 6 original csv files is highly questionable.  The Finance and Human Relations department should develop a detailed plan to quickly review, verify, and correct all employee data. 

### Table Naming Standards
PH should develop naming standards that require programmers to use table names that correctly reflect the information contained within. At times, this will require slightly longer names but with the use of aliases while writing code, the long-term negative impact to programmers will be minimal. This change would greatly decrease the likelihood of providing incorrect information. 

### Generic Titles
In addition, I recommend PH revise their position title structure to eliminate generic labels such as 'Manager' and 'Staff'. Managers of different departments have very different job responsibilities and require different knowledge, skills, and abilities. Position titles should provide some indication of job responsibilities such as: "Finance Manager" or "Marketing Manager". 

All information is available for review on Git Hub. 
