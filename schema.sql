drop database if exists employee_db;

CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department(
  id INTEGER AUTO_INCREMENT NOT NULL,
  name varchar(50),
  PRIMARY KEY (id)
);

create table managers (
id int auto_increment not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
primary key(id)
);
alter table managers auto_increment = 2001;

CREATE TABLE role(
  id INTEGER AUTO_INCREMENT NOT NULL,
  title varchar(50),
  salary int,
  manager_id int,
  department_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (manager_id)
		REFERENCES managers(id),
  FOREIGN KEY (department_id) 
        REFERENCES department(id)
);
alter table role auto_increment = 100;

CREATE TABLE employee(
  id INTEGER AUTO_INCREMENT NOT NULL,
  first_name varchar(30),
  last_name varcHAR(30),
  role_id int,
  manager_id int,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) 
        REFERENCES role(id),
  Foreign key (manager_id)
		References managers(id)
);
alter table employee auto_increment = 1001;


insert into managers
	(first_name, last_name)
    values
    ("Paul", "Sardella"),
    ("Kevin", "Bier"),
    ("Eric", "Johnson"),
    ("Amber", "Lee"),
    ("Linda", "Patterson");
    
    insert into department (name)
	values("Sales"),
		  ("Human Resources"),
          ("IT"),
          ("Real Estate"),
          ("Accounting");
    
    insert into role (title, salary, manager_id, department_id)
	values("Sales Representative", 100000, 2002, 1),
		  ("HR Coordinator", 60000, 2001, 2),
          ("Back-End Developer", 250000, 2003, 3),
          ("Broker", 35000, 2004, 4),
          ("Accounting Specialist", 70000, 2005, 5);
    
insert into employee (first_name, last_name, role_id, manager_id)
	values("Wendy", "Dekuper", 100, 2002),
		  ("Tina", "Jenkins", 101, 2001),
          ("Bob", "Tyson", 102, 2003),
          ("Josh", "Wilson", 103, 2004),
          ("Lori", "McBride", 104, 2005);
          