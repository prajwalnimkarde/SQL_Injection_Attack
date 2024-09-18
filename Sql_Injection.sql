-- databases --
create database User_Authentication;


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


-- Query to run
SELECT * FROM users WHERE username = 'admin'; -- ' AND password = '';

SELECT username, password FROM users WHERE username = 'admin' UNION SELECT
database(), version();

SELECT * FROM users WHERE username = 'admin' AND IF(1=1, SLEEP(5), 0);

SELECT * FROM users WHERE id = 1' AND 1=2;
