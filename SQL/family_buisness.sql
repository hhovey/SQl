/*
Fictional Buisness SQL database for client demo
Author: Hampton A Hovey

*/

--creating of the database

create database Business; 
create table branch_employees (
emp_id Int,
city_of_enployment varchar (100), 
forename varchar(100), 
surname varchar(100), 
birth_date date, 
sex varchar (10),
salary int,
super_id int,
branch_id int, 
mrg_id varchar(100) default 'No Manager',
foreign key(branch_id) references branch(branch_id) On Delete set null,
foreign key (super_id) references superviers(super_id) On Delete set null,  
primary key (emp_id)   
);

insert into branch_employees values (100, 'New York City', 'Matt', 'Miller', '10-22-2022', 'M', '105', '2', '2');
insert into branch_employees values (101, 'Standford', 'Andy', 'Banard', '10-22-2022', 'M', '102', '2', '2');
insert into branch_employees values (102, 'Scranten', 'Michal', 'Scott', '10-22-2022', 'M', '101', '1', '1'); 


Create table  branch_suppliers (
supply_id int, 
Supplier_name varchar(100), 
Supply_type varchar(100),
primary key (supply_id, supplier_name) 
); 
insert into branch_suppliers values (2, 'J.T. Forms & Lables', 'Custom Forms');
insert into branch_suppliers values (2, 'Patriot Paper', 'Paper');
insert into branch_suppliers values (3, 'Uni_ball', 'Writing Utensiles');

Create table  branchs (
branch_id int, 
branch_name varchar(100), 
mgr_id int, 
Mgr_start_date date,
foreign key(mgr_id) References branch_employees(emp_id) On Delete set null,
primary key (branch_id) 
); 
Create table  clients (
client_id int, 
client_name varchar(100), 
branch_id varchar(100),
primary key (client_id) 
); 
create table superviers (
super_id int,
super_forename varchar(100),
super_surname varchar(100), 
primary key (super_id)
); 

