CREATE TABLE employees (
    emp_no      INT,              
    birth_date  VARCHAR(10)            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      VARCHAR(10) 		NOT NULL,
    hire_date   VARCHAR(10)            NOT NULL,
    PRIMARY KEY (emp_no)
);
CREATE TABLE departments (
    dept_no     VARCHAR(10)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE   	(dept_name)
);
CREATE TABLE dept_manager (
   dept_no      VARCHAR(10)         NOT NULL,
   emp_no       INT,             
   from_date    VARCHAR(10)            NOT NULL,
   to_date      VARCHAR(10)            NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
   PRIMARY KEY (emp_no,dept_no)
);
CREATE TABLE dept_emp (
    emp_no      INT,              
    dept_no     VARCHAR(10)         NOT NULL,
    from_date   VARCHAR(10)            NOT NULL,
    to_date     VARCHAR(10)            NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);
CREATE TABLE titles (
    emp_no      INT,             
    title       VARCHAR(50)     NOT NULL,
    from_date   VARCHAR(10)            NOT NULL,
    to_date     VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no,title, from_date)
);
CREATE TABLE salaries (
    emp_no      INT,             
    salary      INT,              
    from_date   VARCHAR(10)            NOT NULL,
    to_date     VARCHAR(10)            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, from_date)
);