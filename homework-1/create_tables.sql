-- SQL-команды для создания таблиц
CREATE TABLE customers_data
(
	customer_id varchar(10) PRIMARY KEY,
	company_name varchar(100) NOT NULL,
	contact_name varchar(50) NOT NULL
);

CREATE TABLE employees_data
(
	employee_id int PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	title varchar(100) NOT NULL,
	birth_date date NOT NULL,
	notes text NOT NULL
);

CREATE TABLE orders_data
(
	order_id int PRIMARY KEY,
	customer_id varchar(10) REFERENCES customers_data(customer_id) NOT NULL,
	employee_id int REFERENCES employees_data(employee_id) NOT NULL,
	order_date date NOT NULL,
	ship_city text NOT NULL
);
