use dbs_compañia
go

SELECT 
    c.company_code,
    c.founder,
    (SELECT COUNT(*) FROM tbl_lead_manager WHERE company_code = c.company_code) AS total_lead_managers,
    (SELECT COUNT(*) FROM tbl_senior_manager WHERE company_code = c.company_code) AS total_senior_managers,
    (SELECT COUNT(*) FROM tbl_manager WHERE company_code = c.company_code) AS total_managers,
    (SELECT COUNT(*) FROM tbl_employee WHERE company_code = c.company_code) AS total_employees
FROM 
    tbl_company c;
