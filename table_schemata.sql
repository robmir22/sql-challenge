-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/z2Px26
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE DepartmentManager;
DROP TABLE DepartmentEmployee;
DROP TABLE Salaries;
DROP TABLE Titles;
DROP TABLE Departments;
DROP TABLE Employees;

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(100)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(100)   NOT NULL,
    last_name varchar(100)   NOT NULL,
    sex varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE DepartmentEmployee (
    emp_no int   NOT NULL,
    dept_no varchar(100)   NOT NULL
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Departments (
    dept_no varchar(100)   NOT NULL,
    dept_name varchar(100)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE DepartmentManager (
    dept_no varchar(100)   NOT NULL,
    emp_no int   NOT NULL
);

CREATE TABLE Titles (
    title_id varchar(100)   NOT NULL,
    title varchar(100)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

ALTER TABLE DepartmentEmployee ADD CONSTRAINT fk_DepartmentEmployee_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE DepartmentManager ADD CONSTRAINT fk_DepartmentManager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

show datestyle;

select * from DepartmentManager;
select * from DepartmentEmployee;
select * from Salaries;
select * from Titles;
select * from Departments;
select * from Employees;


