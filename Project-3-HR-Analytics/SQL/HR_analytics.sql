CREATE DATABASE peoplepulse;
USE peoplepulse;

SHOW DATABASES;
SHOW DATABASES;
CREATE DATABASE peoplepulse;
SHOW DATABASES;
USE peoplepulse;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    department VARCHAR(50),
    job_role VARCHAR(50),
    education VARCHAR(50),
    marital_status VARCHAR(30),
    hire_date DATE,
    monthly_income DECIMAL(10,2),
    job_satisfaction INT,
    work_life_balance INT,
    years_at_company INT,
    overtime VARCHAR(10),
    performance_rating INT,
    attrition VARCHAR(10)
);
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    department_head VARCHAR(100),
    location VARCHAR(50)
);
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE,
    attendance_status VARCHAR(20),
    overtime_hours DECIMAL(4,2),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
CREATE TABLE Performance (
    review_id INT PRIMARY KEY,
    employee_id INT,
    review_year INT,
    performance_score INT,
    training_hours INT,
    promotion_status VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
CREATE TABLE Salary_History (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    salary_year INT,
    monthly_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
SHOW TABLES;
INSERT INTO Departments VALUES
(1, 'IT', 'Arun Kumar', 'Chennai'),
(2, 'HR', 'Priya Menon', 'Chennai'),
(3, 'Finance', 'Rahul Sharma', 'Coimbatore'),
(4, 'Sales', 'Divya Raj', 'Bengaluru'),
(5, 'Marketing', 'Karthik Iyer', 'Chennai');
INSERT INTO Employees VALUES
(1, 'Aarav Kumar', 26, 'Male', 'IT', 'Software Developer', 'Bachelors', 'Single', '2024-01-15', 45000, 4, 4, 2, 'No', 4, 'No'),
(2, 'Meera Nair', 29, 'Female', 'IT', 'Data Analyst', 'Masters', 'Married', '2022-06-10', 58000, 3, 3, 4, 'Yes', 3, 'No'),
(3, 'Rahul Das', 24, 'Male', 'IT', 'Support Engineer', 'Bachelors', 'Single', '2025-02-01', 32000, 2, 2, 1, 'Yes', 3, 'Yes'),
(4, 'Priya Shah', 31, 'Female', 'HR', 'HR Executive', 'Masters', 'Married', '2021-03-12', 52000, 4, 4, 5, 'No', 4, 'No'),
(5, 'Vikram Raj', 27, 'Male', 'HR', 'Recruiter', 'Bachelors', 'Single', '2023-08-20', 38000, 2, 3, 3, 'Yes', 3, 'No'),
(6, 'Divya Menon', 25, 'Female', 'HR', 'HR Assistant', 'Bachelors', 'Single', '2025-05-05', 30000, 1, 2, 1, 'Yes', 2, 'Yes'),
(7, 'Karthik Iyer', 34, 'Male', 'Finance', 'Financial Analyst', 'Masters', 'Married', '2020-07-18', 65000, 4, 3, 6, 'No', 4, 'No'),
(8, 'Sneha Patel', 28, 'Female', 'Finance', 'Accountant', 'Bachelors', 'Married', '2022-11-10', 42000, 3, 4, 4, 'No', 3, 'No'),
(9, 'Arjun Reddy', 23, 'Male', 'Finance', 'Junior Accountant', 'Bachelors', 'Single', '2025-01-20', 28000, 2, 2, 1, 'Yes', 2, 'Yes'),
(10, 'Nila Thomas', 30, 'Female', 'Sales', 'Sales Executive', 'Bachelors', 'Single', '2021-09-15', 48000, 3, 3, 5, 'Yes', 3, 'No'),
(11, 'Surya Prakash', 26, 'Male', 'Sales', 'Sales Associate', 'Bachelors', 'Single', '2024-04-01', 35000, 1, 2, 2, 'Yes', 2, 'Yes'),
(12, 'Ananya Rao', 32, 'Female', 'Sales', 'Sales Manager', 'Masters', 'Married', '2020-02-14', 72000, 4, 4, 6, 'No', 5, 'No'),
(13, 'Manoj Kumar', 27, 'Male', 'Marketing', 'Digital Marketer', 'Bachelors', 'Single', '2023-03-10', 40000, 3, 3, 3, 'No', 3, 'No'),
(14, 'Aisha Rahman', 24, 'Female', 'Marketing', 'Content Specialist', 'Bachelors', 'Single', '2025-06-01', 31000, 2, 2, 1, 'Yes', 2, 'Yes'),
(15, 'Rohan Mehta', 35, 'Male', 'Marketing', 'Marketing Manager', 'Masters', 'Married', '2019-10-05', 78000, 4, 4, 7, 'No', 5, 'No');
INSERT INTO Attendance VALUES
(1, 1, '2026-11-01', 'Present', 0.00),
(2, 2, '2026-11-01', 'Present', 1.50),
(3, 3, '2026-11-01', 'Absent', 0.00),
(4, 4, '2026-11-01', 'Present', 0.00),
(5, 5, '2026-11-01', 'Present', 2.00),
(6, 6, '2026-11-01', 'Absent', 0.00),
(7, 7, '2026-11-01', 'Present', 0.00),
(8, 8, '2026-11-01', 'Present', 0.50),
(9, 9, '2026-11-01', 'Absent', 0.00),
(10, 10, '2026-11-01', 'Present', 1.00),
(11, 11, '2026-11-01', 'Present', 2.50),
(12, 12, '2026-11-01', 'Present', 0.00),
(13, 13, '2026-11-01', 'Present', 0.00),
(14, 14, '2026-11-01', 'Absent', 0.00),
(15, 15, '2026-11-01', 'Present', 0.00);
INSERT INTO Performance VALUES
(1, 1, 2026, 4, 20, 'No'),
(2, 2, 2026, 3, 15, 'No'),
(3, 3, 2026, 3, 10, 'No'),
(4, 4, 2026, 4, 25, 'Yes'),
(5, 5, 2026, 3, 12, 'No'),
(6, 6, 2026, 2, 8, 'No'),
(7, 7, 2026, 4, 30, 'Yes'),
(8, 8, 2026, 3, 18, 'No'),
(9, 9, 2026, 2, 6, 'No'),
(10, 10, 2026, 3, 14, 'No'),
(11, 11, 2026, 2, 9, 'No'),
(12, 12, 2026, 5, 28, 'Yes'),
(13, 13, 2026, 3, 16, 'No'),
(14, 14, 2026, 2, 7, 'No'),
(15, 15, 2026, 5, 32, 'Yes');
INSERT INTO Salary_History VALUES
(1, 1, 2026, 45000, 5000),
(2, 2, 2026, 58000, 7000),
(3, 3, 2026, 32000, 2000),
(4, 4, 2026, 52000, 6000),
(5, 5, 2026, 38000, 3000),
(6, 6, 2026, 30000, 1000),
(7, 7, 2026, 65000, 10000),
(8, 8, 2026, 42000, 4000),
(9, 9, 2026, 28000, 1500),
(10, 10, 2026, 48000, 5000),
(11, 11, 2026, 35000, 2500),
(12, 12, 2026, 72000, 12000),
(13, 13, 2026, 40000, 3500),
(14, 14, 2026, 31000, 1800),
(15, 15, 2026, 78000, 15000);
SELECT * FROM Employees;
SELECT 'Employees' AS table_name, COUNT(*) AS total_records FROM Employees
UNION ALL
SELECT 'Departments', COUNT(*) FROM Departments
UNION ALL
SELECT 'Attendance', COUNT(*) FROM Attendance
UNION ALL
SELECT 'Performance', COUNT(*) FROM Performance
UNION ALL
SELECT 'Salary_History', COUNT(*) FROM Salary_History;
SELECT
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    SUM(CASE WHEN attrition = 'No' THEN 1 ELSE 0 END) AS employees_retained,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees;
SELECT
    department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY department
ORDER BY attrition_rate DESC;
SELECT
    overtime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY overtime;
SELECT
    job_satisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY job_satisfaction
ORDER BY job_satisfaction;
SELECT
    work_life_balance,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY work_life_balance
ORDER BY work_life_balance;
SELECT
    attrition,
    COUNT(*) AS total_employees,
    ROUND(AVG(monthly_income), 2) AS average_monthly_salary,
    MIN(monthly_income) AS minimum_salary,
    MAX(monthly_income) AS maximum_salary
FROM Employees
GROUP BY attrition;
SELECT
    CASE
        WHEN age < 25 THEN 'Below 25'
        WHEN age BETWEEN 25 AND 30 THEN '25-30'
        ELSE 'Above 30'
    END AS age_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY age_group
ORDER BY age_group;
SELECT
    gender,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY gender;
SELECT
    marital_status,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY marital_status;
SELECT
    department,
    COUNT(*) AS total_employees,
    ROUND(AVG(monthly_income), 2) AS average_salary,
    MIN(monthly_income) AS minimum_salary,
    MAX(monthly_income) AS maximum_salary,
    SUM(monthly_income) AS total_monthly_payroll
FROM Employees
GROUP BY department
ORDER BY average_salary DESC;
SELECT
    performance_rating,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY performance_rating
ORDER BY performance_rating;
SELECT
    promotion_status,
    COUNT(*) AS total_employees,
    ROUND(AVG(training_hours), 2) AS average_training_hours,
    ROUND(AVG(performance_score), 2) AS average_performance_score
FROM Performance
GROUP BY promotion_status;
SELECT
    e.department,
    COUNT(a.attendance_id) AS total_attendance_records,
    SUM(CASE WHEN a.attendance_status = 'Present' THEN 1 ELSE 0 END) AS present_count,
    SUM(CASE WHEN a.attendance_status = 'Absent' THEN 1 ELSE 0 END) AS absent_count,
    ROUND(
        SUM(CASE WHEN a.attendance_status = 'Absent' THEN 1 ELSE 0 END) * 100.0
        / COUNT(a.attendance_id),
        2
    ) AS absence_rate
FROM Employees e
JOIN Attendance a
    ON e.employee_id = a.employee_id
GROUP BY e.department
ORDER BY absence_rate DESC;
SELECT
    e.department,
    COUNT(a.attendance_id) AS total_records,
    ROUND(SUM(a.overtime_hours), 2) AS total_overtime_hours,
    ROUND(AVG(a.overtime_hours), 2) AS average_overtime_hours
FROM Employees e
JOIN Attendance a
    ON e.employee_id = a.employee_id
GROUP BY e.department
ORDER BY total_overtime_hours DESC;
SELECT
    e.department,
    COUNT(s.salary_id) AS total_employees,
    ROUND(AVG(s.monthly_salary), 2) AS average_salary,
    ROUND(AVG(s.bonus), 2) AS average_bonus,
    SUM(s.bonus) AS total_bonus
FROM Employees e
JOIN Salary_History s
    ON e.employee_id = s.employee_id
GROUP BY e.department
ORDER BY total_bonus DESC;
SELECT
    years_at_company,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM Employees
GROUP BY years_at_company
ORDER BY years_at_company;
SELECT
    employee_name,
    department,
    job_role,
    monthly_income,
    RANK() OVER (ORDER BY monthly_income DESC) AS salary_rank
FROM Employees;
SELECT
    employee_name,
    department,
    job_satisfaction,
    work_life_balance,
    overtime,
    CASE
        WHEN attrition = 'Yes' THEN 'Already Left'
        WHEN job_satisfaction <= 2
             AND work_life_balance <= 2
             AND overtime = 'Yes' THEN 'High Risk'
        WHEN job_satisfaction <= 2
             OR work_life_balance <= 2
             OR overtime = 'Yes' THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS retention_risk
FROM Employees
ORDER BY retention_risk;
SELECT
    e.employee_id,
    e.employee_name,
    d.department_head,
    e.department,
    e.job_role,
    e.monthly_income,
    e.job_satisfaction,
    e.attrition,
    p.performance_score,
    p.training_hours,
    p.promotion_status,
    s.bonus
FROM Employees e
JOIN Departments d
    ON e.department = d.department_name
JOIN Performance p
    ON e.employee_id = p.employee_id
JOIN Salary_History s
    ON e.employee_id = s.employee_id
ORDER BY e.employee_id;
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Attendance;
SELECT * FROM Performance;
SELECT * FROM Salary_History;
-- Project 3: PeoplePulse - Data verification completed