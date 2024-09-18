-- databases --
create database User_Authentication;
create database Product_Information;
create database Employee_Information;



-- tables in User_Authentication --
create table users(id int, username varchar(50), password varchar(50), email varchar(50));
insert into users (id, username, password, email) values (1, "admin", "password123", "admin@example.com"),(2, "user1", "password456", "user1@example.com"),(3, "user2", "password789", "user2@example.com"),(4, "user3", "password012", "user3@example.com"),(5, "user4", "password345", "user4@example.com");

create table user_roles(id int, role_name varchar(50), description varchar(50));
insert into user_roles (id, role_name, description) values (1, "Admin", "System Administrator"),(2, "User", "Regular User"),(3, "Moderator", "Forum Moderator"),(4, "Guest", "Unregistered User"),(5, "Superuser", "System Superuser");

create table login_attempts(id int, username varchar(50), attempt_date date, success int);
insert into login_attempts (id, username, attempt_date, success) values (1, "admin", "2022-01-01 12:00:00", 1),(2, "user1", "2022-01-02 13:00:00", 0),(3, "user2", "2022-01-03 14:00:00", 1),(4, "user3", "2022-01-04 15:00:00", 0),(5, "user4", "2022-01-05 16:00:00", 1);

create table user_sessions(id int, user_id int, session_start date, session_end date);
insert into user_sessions (id, user_id, session_start, session_end) values (1, 1, "2022-01-01 12:00:00", "2022-01-01 13:00:00"),(2, 2, "2022-01-02 13:00:00", "2022-01-02 14:00:00"),(3, 3, "2022-01-03 14:00:00", "2022-01-03 15:00:00"),(4, 4, "2022-01-04 15:00:00", "2022-01-04 16:00:00"),(5, 5, "2022-01-05 16:00:00", "2022-01-05 17:00:00");

create table password_resets(id int, user_id int, reset_date date, reset_token varchar(50));
insert into password_resets (id, user_id, reset_date, reset_token) values (1, 1, "2022-01-01 12:00:00", "reset_token_123"),(2, 2, "2022-01-02 13:00:00", "reset_token_456"),(3, 3, "2022-01-03 14:00:00", "reset_token_789"),(4, 4, "2022-01-04 15:00:00", "reset_token_012"),(5, 5, "2022-01-05 16:00:00", "reset_token_345");







-- tables in Product_Information --
create table products(id int primary key, product_name varchar(50), description varchar(50), price numeric(6,2));
INSERT INTO products (id, product_name, description, price) 
VALUES 
(1, 'Product 1', 'Description 1', 10.99),
(2, 'Product 2', 'Description 2', 9.99),
(3, 'Product 3', 'Description 3', 12.99),
(4, 'Product 4', 'Description 4', 8.99),
(5, 'Product 5', 'Description 5', 11.99);


create table categories(id int primary key, category_name varchar(50), description varchar(20));
INSERT INTO categories (id, category_name, description) 
VALUES 
(1, 'Category 1', 'Description 1'),
(2, 'Category 2', 'Description 2'),
(3, 'Category 3', 'Description 3'),
(4, 'Category 4', 'Description 4'),
(5, 'Category 5', 'Description 5');



create table product_categories(id int, product_id int , category_id int, category_type varchar(50), foreign key (product_id) references products(id), foreign key (category_id) references categories(id));
INSERT INTO product_categories (id, product_id, category_id, category_type) 
VALUES 
(1, 1, 1, "Primary Category"),
(2, 2, 3, "Secondary Category"),
(3, 3, 2, "Primary Category"),
(4, 4, 1, "Secondary Category");



create table product_reviews(id int, product_id int, review_date date, rating int);
insert into product_reviews (id, product_id, review_date, rating) values (1, 1, "2022-01-01 12:00:00", 3),(2, 2, "2022-01-02 13:00:00", 4),(3, 3, "2022-01-03 14:00:00",4),(4, 4, "2022-01-04 15:00:00",5),(5, 5, "2022-01-05 16:00:00",2);


create table product_images(id int, product_id int, image_url varchar(100));






-- tables in employee information --

create table Employees(id int, employee_name varchar(50), department varchar(50), salary int);
INSERT INTO employees (id, employee_name, department, salary) 
VALUES 
(1, 'John Doe', 'Sales', 50000),
(2, 'Jane Doe', 'Marketing', 60000),
(3, 'Bob Smith', 'IT', 70000),
(4, 'Alice Johnson', 'HR', 45000),
(5, 'Charlie Brown', 'Finance', 55000);


create table Departments(id int, department_name varchar(50), description varchar(50));
INSERT INTO departments (id, department_name, description) 
VALUES 
(1, 'Sales', 'Handles customer sales'),
(2, 'Marketing', 'Responsible for advertising'),
(3, 'IT', 'Information Technology department'),
(4, 'HR', 'Human Resources'),
(5, 'Finance', 'Handles company finances');


create table Employee_Roles(id int, role_name varchar(50), description varchar(50));
INSERT INTO employee_roles (id, role_name, description) 
VALUES 
(1, 'Manager', 'Manages team'),
(2, 'Sales Executive', 'Executes sales'),
(3, 'Software Engineer', 'Develops software'),
(4, 'HR Executive', 'Manages HR functions'),
(5, 'Financial Analyst', 'Analyzes finances');


-- Query to run
SELECT * FROM users WHERE username = 'admin'; -- ' AND password = '';

SELECT username, password FROM users WHERE username = 'admin' UNION SELECT
database(), version();

SELECT * FROM users WHERE username = 'admin' AND IF(1=1, SLEEP(5), 0);

SELECT * FROM users WHERE id = 1' AND 1=2;
