--Creating table squema

--Drop table if exists
 
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


--Create table departments 
CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    PRIMARY KEY (dept_no)
);

select * from departments

--Creating Table employees 
create table employees (
	emp_no integer not null,
	emp_title_id  varchar not null,
	birth_date  date not null,
	first_name  varchar(30) not null,
	last_name  varchar(30) not null,
	sex  varchar not null,
	hire_date  date not null,
	primary key (emp_no)
);

select * from employees


--Create table dept_emp 
create table dept_emp(
    emp_no integer not null,
    dept_no varchar not null,
   	foreign key(emp_no) references employees (emp_no),
	foreign key(dept_no) references departments (dept_no)
);

select * from dept_emp


--create table dept_manager
create table dept_manager(
	dept_no varchar not null,
	emp_no integer not null,
	foreign key(dept_no) references departments (dept_no),
	foreign key(emp_no) references employees (emp_no)
);	

select * from dept_manager

--create table titles
create table titles(
	title_id varchar not null, 
	title varchar not null,
	primary key (title_id)
);	

select * from titles	
	
	
-- create table salaries
create table salaries(
	emp_no integer, 
	salary integer,
	foreign key(emp_no ) references employees(emp_no)
);

select * from salaries	


