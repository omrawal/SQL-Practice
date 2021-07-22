-- New Companies
-- Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.


select company.company_code , company.founder, 
count(distinct lead_manager.lead_manager_code), 
count(distinct senior_manager.senior_manager_code),
count(distinct manager.manager_code),
count(distinct employee.employee_code)

from company,lead_manager,senior_manager,manager,employee

where lead_manager.company_code=company.company_code 
and company.company_code=senior_manager.company_code 
and company.company_code=manager.company_code 
and company.company_code=employee.company_code

group by company.company_code,company.founder
order by company.company_code