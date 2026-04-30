-- ============================================================
-- CREATE & SELECT DATABASE
-- ============================================================
 -- Drop the database if already exist.
DROP DATABASE IF EXISTS talentedge_db;

-- Create a databases
CREATE DATABASE talentedge_db;
USE talentedge_db;
 
 
-- ============================================================
-- CREATE TABLES
-- ============================================================
 
-- Table 1: departments
CREATE TABLE departments (
    dept_id       INT AUTO_INCREMENT PRIMARY KEY,
    dept_name     VARCHAR(100) NOT NULL,
    annual_budget DECIMAL(15,2),
    location      VARCHAR(80)
);
 
-- Table 2: employees  (self-referencing for manager hierarchy)
CREATE TABLE employees (
    emp_id            INT AUTO_INCREMENT PRIMARY KEY,
    full_name         VARCHAR(100) NOT NULL,
    email             VARCHAR(150) NOT NULL UNIQUE,
    dept_id           INT NOT NULL,
    manager_id        INT DEFAULT NULL,
    hire_date         DATE NOT NULL,
    salary            DECIMAL(12,2) NOT NULL,
    job_title         VARCHAR(100) NOT NULL,
    gender            VARCHAR(15) NOT NULL,
    city              VARCHAR(80),
    employment_status VARCHAR(20) NOT NULL DEFAULT 'Active',
    CONSTRAINT fk_emp_dept
        FOREIGN KEY (dept_id)   REFERENCES departments(dept_id),
    CONSTRAINT fk_emp_manager
        FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);
 
-- Table 3: performance_reviews
CREATE TABLE performance_reviews (
    review_id      INT AUTO_INCREMENT PRIMARY KEY,
    emp_id         INT NOT NULL,
    review_year    YEAR NOT NULL,
    review_quarter TINYINT NOT NULL,
    rating         DECIMAL(3,1) NOT NULL,
    reviewer_id    INT,
    CONSTRAINT fk_pr_emp
        FOREIGN KEY (emp_id)      REFERENCES employees(emp_id),
    CONSTRAINT fk_pr_reviewer
        FOREIGN KEY (reviewer_id) REFERENCES employees(emp_id)
);
 
-- Table 4: leaves
CREATE TABLE leaves (
    leave_id   INT AUTO_INCREMENT PRIMARY KEY,
    emp_id     INT NOT NULL,
    leave_type VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date   DATE NOT NULL,
    status     VARCHAR(20) NOT NULL DEFAULT 'approved',
    CONSTRAINT fk_leave_emp
        FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
 
-- Table 5: attrition
CREATE TABLE attrition (
    record_id   INT AUTO_INCREMENT PRIMARY KEY,
    emp_id      INT NOT NULL,
    exit_date   DATE NOT NULL,
    exit_reason VARCHAR(100),
    exit_type   VARCHAR(20) NOT NULL,
    CONSTRAINT fk_attr_emp
        FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
 
-- Table 6: hiring
CREATE TABLE hiring (
    app_id       INT AUTO_INCREMENT PRIMARY KEY,
    dept_id      INT NOT NULL,
    job_title    VARCHAR(100),
    applied_date DATE NOT NULL,
    stage        VARCHAR(50) NOT NULL,
    offer_date   DATE DEFAULT NULL,
    joined_date  DATE DEFAULT NULL,
    source       VARCHAR(80),
    CONSTRAINT fk_hiring_dept
        FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- =====================================================================================================================
-- SUCCESS: All 6 tables (attrition, departments, employees, hiring, leaves, performance_reviews) created successfully
-- =====================================================================================================================


