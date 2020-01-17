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
    
   