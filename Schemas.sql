
Create table departments(
	dept_no VARCHAR (10) NOT NULL,
	dept_name VARCHAR (20) NOT NULL,
	Constraint pk_departments PRIMARY KEY (dept_no)
);

Create table dept_emp (
	emp_no INT  NOT NULL,
	dept_no VARCHAR (10) NOT NULL,
);

Create table dept_manager(
	dept_no VARCHAR (10) NOT NULL,
	emp_no INT  NOT NULL,
);

Create Table titles(
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR (50)  NOT NULL,
	Constraint pk_title PRIMARY KEY (title_id)
);

CREATE TABLE employees(
	emp_no INT  NOT NULL,
	emp_title_id VARCHAR (20) NOT NULL,
	birth_date DATE  NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE  NOT NULL,
	Constraint pk_employees PRIMARY KEY (emp_no)
);


CREATE TABLE salaries (
	emp_no INT  NOT NULL,
	salary INT  NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);

Alter table dept_emp add constraint fk_dept_emp_emp_no Foreign Key (emp_no)
References "employees" (emp_no);

Alter table dept_emp add constraint fk_dept_emp_dept_no Foreign Key (dept_no)
References "departments" (dept_no);

Alter table dept_manager add constraint fk_dept_manager_dept_no Foreign Key (dept_no)
References "departments" (dept_no);

Alter table dept_manager add constraint fk_dept_manager_emp_no Foreign Key (emp_no)
References "emplyees" (emp_no);

Alter table employees add constraint fk_employees_emp_title Foreign Key (emp_title)
References "title" (title_id);

Alter table salaries add constraint fk_salaries_emp_no Foreign Key (emp_no)
References "employees" (emp_no);

select * from employees

