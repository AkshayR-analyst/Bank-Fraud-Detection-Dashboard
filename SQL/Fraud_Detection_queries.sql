-- Create Database
CREATE DATABASE fraud_detection;
USE fraud_detection;

-- Table 1: Customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) NOT NULL,
    city VARCHAR(50),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO customers (full_name, email, phone, city, date_of_birth) VALUES
('Amit Sharma', 'amit@gmail.com', '9876543210', 'Mumbai', '1990-05-15'),
('Priya Singh', 'priya@gmail.com', '9876543211', 'Delhi', '1992-08-22'),
('Rahul Verma', 'rahul@gmail.com', '9876543212', 'Chennai', '1988-03-10'),
('Sneha Patel', 'sneha@gmail.com', '9876543213', 'Pune', '1995-11-30'),
('Karan Mehta', 'karan@gmail.com', '9876543214', 'Bangalore', '1993-07-18'),
('Divya Nair', 'divya@gmail.com', '9876543215', 'Hyderabad', '1991-02-25'),
('Vijay Kumar', 'vijay@gmail.com', '9876543216', 'Kolkata', '1987-09-14'),
('Ananya Roy', 'ananya@gmail.com', '9876543217', 'Jaipur', '1996-04-05'),
('Suresh Iyer', 'suresh@gmail.com', '9876543218', 'Mumbai', '1985-12-20'),
('Meena Joshi', 'meena@gmail.com', '9876543219', 'Delhi', '1994-06-08'),
('Ravi Tiwari', 'ravi@gmail.com', '9876543220', 'Chennai', '1989-01-17'),
('Pooja Gupta', 'pooja@gmail.com', '9876543221', 'Pune', '1997-10-12'),
('Arun Das', 'arun@gmail.com', '9876543222', 'Bangalore', '1986-03-28'),
('Kavya Reddy', 'kavya@gmail.com', '9876543223', 'Hyderabad', '1998-07-03'),
('Nikhil Jain', 'nikhil@gmail.com', '9876543224', 'Kolkata', '1992-11-19'),
('Sita Pillai', 'sita@gmail.com', '9876543225', 'Jaipur', '1990-08-07'),
('Manoj Yadav', 'manoj@gmail.com', '9876543226', 'Mumbai', '1984-05-22'),
('Deepa Bose', 'deepa@gmail.com', '9876543227', 'Delhi', '1995-02-14'),
('Arjun Menon', 'arjun@gmail.com', '9876543228', 'Chennai', '1993-09-30'),
('Lakshmi Nair', 'lakshmi@gmail.com', '9876543229', 'Pune', '1988-12-11'),
('Rohit Saxena', 'rohit@gmail.com', '9876543230', 'Bangalore', '1996-06-25'),
('Sunita Pandey', 'sunita@gmail.com', '9876543231', 'Hyderabad', '1991-04-16'),
('Harish Nair', 'harish@gmail.com', '9876543232', 'Mumbai', '1991-03-12'),
('Preethi Raj', 'preethi@gmail.com', '9876543233', 'Chennai', '1993-07-25'),
('Sanjay Gupta', 'sanjay@gmail.com', '9876543234', 'Delhi', '1988-11-08'),
('Nisha Sharma', 'nisha@gmail.com', '9876543235', 'Pune', '1995-04-19'),
('Vikram Singh', 'vikram@gmail.com', '9876543236', 'Bangalore', '1990-09-30'),
('Asha Menon', 'asha@gmail.com', '9876543237', 'Hyderabad', '1987-06-14'),
('Rajesh Iyer', 'rajesh@gmail.com', '9876543238', 'Kolkata', '1994-01-22'),
('Swathi Pillai', 'swathi@gmail.com', '9876543239', 'Jaipur', '1996-08-05'),
('Karthik Das', 'karthik@gmail.com', '9876543240', 'Mumbai', '1992-12-17'),
('Lavanya Bose', 'lavanya@gmail.com', '9876543241', 'Delhi', '1989-05-28'),
('Mohan Reddy', 'mohan@gmail.com', '9876543242', 'Chennai', '1997-02-09'),
('Padma Joshi', 'padma@gmail.com', '9876543243', 'Pune', '1991-10-31'),
('Sunil Tiwari', 'sunil@gmail.com', '9876543244', 'Bangalore', '1986-07-16'),
('Geetha Nair', 'geetha@gmail.com', '9876543245', 'Hyderabad', '1993-03-04'),
('Aditya Kumar', 'aditya@gmail.com', '9876543246', 'Kolkata', '1998-11-20'),
('Revathi Rao', 'revathi@gmail.com', '9876543247', 'Jaipur', '1990-06-11'),
('Pranav Jain', 'pranav@gmail.com', '9876543248', 'Mumbai', '1995-09-23'),
('Chitra Menon', 'chitra@gmail.com', '9876543249', 'Delhi', '1988-04-07'),
('Ganesh Pillai', 'ganesh@gmail.com', '9876543250', 'Chennai', '1992-01-15'),
('Sindhu Verma', 'sindhu@gmail.com', '9876543251', 'Pune', '1996-08-29'),
('Balamurugan S', 'bala@gmail.com', '9876543252', 'Bangalore', '1987-05-18'),
('Kavitha Nair', 'kavitha@gmail.com', '9876543253', 'Hyderabad', '1994-12-03'),
('Dinesh Sharma', 'dinesh@gmail.com', '9876543254', 'Kolkata', '1991-07-27'),
('Mythili Raj', 'mythili@gmail.com', '9876543255', 'Jaipur', '1997-03-14'),
('Venkat Iyer', 'venkat@gmail.com', '9876543256', 'Mumbai', '1989-10-06'),
('Saranya Das', 'saranya@gmail.com', '9876543257', 'Delhi', '1993-06-21'),
('Prakash Nair', 'prakash@gmail.com', '9876543258', 'Chennai', '1985-02-28'),
('Anitha Reddy', 'anitha@gmail.com', '9876543259', 'Pune', '1996-09-10'),
('Suresh Menon', 'suresh2@gmail.com', '9876543260', 'Bangalore', '1990-04-24'),
('Radha Krishnan', 'radha@gmail.com', '9876543261', 'Hyderabad', '1988-11-15');
select count(*)from customers;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE fraud_alerts;
TRUNCATE TABLE login_logs;
TRUNCATE TABLE transactions;
TRUNCATE TABLE accounts;
TRUNCATE TABLE customers;
SET FOREIGN_KEY_CHECKS = 1;

-- Table 2: Accounts
CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_number VARCHAR(20) UNIQUE NOT NULL,
    account_type ENUM('Savings', 'Current', 'Salary') NOT NULL,
    balance DECIMAL(10,2) DEFAULT 0.00,
    status ENUM('Active', 'Inactive', 'Blocked') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO accounts (customer_id, account_number, account_type, balance, status) VALUES
(1, 'ACC1001', 'Savings', 25000.00, 'Active'),
(2, 'ACC1002', 'Current', 50000.00, 'Active'),
(3, 'ACC1003', 'Savings', 15000.00, 'Active'),
(4, 'ACC1004', 'Salary', 35000.00, 'Active'),
(5, 'ACC1005', 'Savings', 8000.00, 'Active'),
(6, 'ACC1006', 'Current', 120000.00, 'Active'),
(7, 'ACC1007', 'Savings', 5000.00, 'Inactive'),
(8, 'ACC1008', 'Salary', 45000.00, 'Active'),
(9, 'ACC1009', 'Savings', 75000.00, 'Active'),
(10, 'ACC1010', 'Current', 9000.00, 'Blocked'),
(11, 'ACC1011', 'Savings', 32000.00, 'Active'),
(12, 'ACC1012', 'Salary', 18000.00, 'Active'),
(13, 'ACC1013', 'Current', 62000.00, 'Active'),
(14, 'ACC1014', 'Savings', 11000.00, 'Active'),
(15, 'ACC1015', 'Salary', 29000.00, 'Inactive'),
(16, 'ACC1016', 'Savings', 43000.00, 'Active'),
(17, 'ACC1017', 'Current', 87000.00, 'Active'),
(18, 'ACC1018', 'Savings', 6000.00, 'Active'),
(19, 'ACC1019', 'Salary', 54000.00, 'Active'),
(20, 'ACC1020', 'Savings', 21000.00, 'Blocked'),
(21, 'ACC1021', 'Current', 39000.00, 'Active'),
(22, 'ACC1022', 'Savings', 14000.00, 'Active');

-- Table 3: Transactions
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT NOT NULL,
    transaction_type ENUM('Deposit', 'Withdrawal', 'Transfer') NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    location VARCHAR(100),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Success', 'Failed', 'Pending') DEFAULT 'Success',
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
INSERT INTO transactions (account_id, transaction_type, amount, location, transaction_date, status) VALUES
(1, 'Deposit', 5000.00, 'Mumbai', '2026-06-01 09:00:00', 'Success'),
(1, 'Withdrawal', 45000.00, 'Delhi', '2026-06-01 09:05:00', 'Success'),
(1, 'Withdrawal', 38000.00, 'Chennai', '2026-06-01 09:07:00', 'Success'),
(2, 'Deposit', 10000.00, 'Pune', '2026-06-01 10:00:00', 'Success'),
(3, 'Withdrawal', 2000.00, 'Mumbai', '2026-06-02 11:00:00', 'Success'),
(4, 'Transfer', 75000.00, 'Bangalore', '2026-06-02 11:05:00', 'Success'),
(4, 'Transfer', 60000.00, 'Hyderabad', '2026-06-02 11:08:00', 'Success'),
(5, 'Deposit', 3000.00, 'Kolkata', '2026-06-02 12:00:00', 'Success'),
(6, 'Withdrawal', 500.00, 'Jaipur', '2026-06-03 09:00:00', 'Success'),
(7, 'Deposit', 1000.00, 'Mumbai', '2026-06-03 10:00:00', 'Failed'),
(8, 'Withdrawal', 92000.00, 'Delhi', '2026-06-03 10:02:00', 'Success'),
(8, 'Withdrawal', 88000.00, 'Chennai', '2026-06-03 10:04:00', 'Success'),
(9, 'Transfer', 4000.00, 'Pune', '2026-06-03 11:00:00', 'Success'),
(10, 'Deposit', 6000.00, 'Bangalore', '2026-06-04 09:00:00', 'Failed'),
(11, 'Withdrawal', 55000.00, 'Hyderabad', '2026-06-04 09:03:00', 'Success'),
(11, 'Withdrawal', 48000.00, 'Kolkata', '2026-06-04 09:06:00', 'Success'),
(12, 'Deposit', 2000.00, 'Jaipur', '2026-06-04 10:00:00', 'Success'),
(13, 'Transfer', 15000.00, 'Mumbai', '2026-06-05 09:00:00', 'Success'),
(14, 'Withdrawal', 700.00, 'Delhi', '2026-06-05 10:00:00', 'Success'),
(15, 'Deposit', 8000.00, 'Chennai', '2026-06-05 11:00:00', 'Pending'),
(16, 'Withdrawal', 67000.00, 'Pune', '2026-06-05 11:02:00', 'Success'),
(16, 'Withdrawal', 71000.00, 'Bangalore', '2026-06-05 11:04:00', 'Success');

-- Table 4: Login Logs
CREATE TABLE login_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    login_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(50),
    location VARCHAR(100),
    status ENUM('Success', 'Failed') DEFAULT 'Success',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO login_logs (customer_id, login_time, ip_address, location, status) VALUES
(1, '2026-06-01 08:55:00', '192.168.1.1', 'Mumbai', 'Success'),
(1, '2026-06-01 08:56:00', '192.168.1.2', 'Delhi', 'Failed'),
(1, '2026-06-01 08:57:00', '192.168.1.3', 'Chennai', 'Failed'),
(1, '2026-06-01 08:58:00', '192.168.1.4', 'Kolkata', 'Failed'),
(1, '2026-06-01 08:59:00', '192.168.1.5', 'Pune', 'Success'),
(2, '2026-06-01 09:00:00', '192.168.2.1', 'Delhi', 'Success'),
(3, '2026-06-02 10:00:00', '192.168.3.1', 'Chennai', 'Success'),
(4, '2026-06-02 10:02:00', '192.168.4.1', 'Bangalore', 'Failed'),
(4, '2026-06-02 10:03:00', '192.168.4.2', 'Hyderabad', 'Failed'),
(4, '2026-06-02 10:04:00', '192.168.4.3', 'Mumbai', 'Success'),
(5, '2026-06-02 11:00:00', '192.168.5.1', 'Kolkata', 'Success'),
(6, '2026-06-03 09:00:00', '192.168.6.1', 'Jaipur', 'Success'),
(7, '2026-06-03 09:05:00', '192.168.7.1', 'Mumbai', 'Failed'),
(7, '2026-06-03 09:06:00', '192.168.7.2', 'Delhi', 'Failed'),
(7, '2026-06-03 09:07:00', '192.168.7.3', 'Chennai', 'Failed'),
(7, '2026-06-03 09:08:00', '192.168.7.4', 'Pune', 'Success'),
(8, '2026-06-03 10:00:00', '192.168.8.1', 'Bangalore', 'Success'),
(9, '2026-06-04 09:00:00', '192.168.9.1', 'Hyderabad', 'Success'),
(10, '2026-06-04 10:00:00', '192.168.10.1', 'Kolkata', 'Failed'),
(10, '2026-06-04 10:01:00', '192.168.10.2', 'Jaipur', 'Failed'),
(10, '2026-06-04 10:02:00', '192.168.10.3', 'Mumbai', 'Failed'),
(10, '2026-06-04 10:03:00', '192.168.10.4', 'Delhi', 'Success');

-- Table 5: Fraud Alerts
CREATE TABLE fraud_alerts (
    alert_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    account_id INT,
    alert_type VARCHAR(100) NOT NULL,
    alert_description TEXT,
    risk_level ENUM('Low', 'Medium', 'High') DEFAULT 'Low',
    alert_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Open', 'Investigating', 'Resolved') DEFAULT 'Open',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
INSERT INTO fraud_alerts (customer_id, account_id, alert_type, alert_description, risk_level, alert_date, status) VALUES
(1, 1, 'Multiple Locations', 'Transactions in Mumbai, Delhi, Chennai within 7 minutes', 'High', '2026-06-01 09:10:00', 'Open'),
(1, 1, 'Multiple Failed Logins', '3 failed logins from different cities', 'High', '2026-06-01 09:00:00', 'Investigating'),
(4, 4, 'Large Transfer', 'Two transfers above 60000 within 5 minutes', 'High', '2026-06-02 11:10:00', 'Open'),
(4, NULL, 'Suspicious Login', 'Failed logins from Bangalore and Hyderabad', 'Medium', '2026-06-02 10:05:00', 'Open'),
(7, 7, 'Multiple Failed Logins', '3 failed logins from different IPs', 'High', '2026-06-03 09:10:00', 'Investigating'),
(8, 8, 'Large Withdrawal', 'Two withdrawals above 88000 within 2 minutes', 'High', '2026-06-03 10:05:00', 'Open'),
(10, 10, 'Blocked Account Activity', 'Transaction attempted on blocked account', 'High', '2026-06-04 09:00:00', 'Resolved'),
(10, NULL, 'Multiple Failed Logins', '3 failed logins from different locations', 'High', '2026-06-04 10:04:00', 'Open'),
(11, 11, 'Multiple Locations', 'Two withdrawals from different cities in 3 minutes', 'High', '2026-06-04 09:10:00', 'Investigating'),
(16, 16, 'Multiple Locations', 'Two withdrawals from Pune and Bangalore in 2 minutes', 'High', '2026-06-05 11:05:00', 'Open'),
(2, 2, 'Large Deposit', 'Unusual large deposit of 50000', 'Medium', '2026-06-01 10:05:00', 'Resolved'),
(3, 3, 'Low Balance Withdrawal', 'Withdrawal attempted with low balance', 'Low', '2026-06-02 11:05:00', 'Resolved'),
(5, 5, 'Unusual Activity', 'Transaction from new location', 'Low', '2026-06-02 12:05:00', 'Resolved'),
(6, 6, 'Normal Check', 'Routine check on large balance account', 'Low', '2026-06-03 09:05:00', 'Resolved'),
(9, 9, 'Unusual Transfer', 'Transfer to unknown account', 'Medium', '2026-06-03 11:05:00', 'Investigating'),
(12, 12, 'New Device Login', 'Login from new IP address', 'Low', '2026-06-04 10:05:00', 'Resolved'),
(13, 13, 'Large Transfer', 'Transfer of 15000 to new account', 'Medium', '2026-06-05 09:05:00', 'Investigating'),
(14, 14, 'Unusual Time', 'Transaction at unusual hour', 'Low', '2026-06-05 10:05:00', 'Resolved'),
(15, 15, 'Pending Transaction', 'Transaction stuck in pending state', 'Low', '2026-06-05 11:05:00', 'Resolved'),
(17, 17, 'Large Balance', 'Unusually large balance movement', 'Medium', '2026-06-05 12:00:00', 'Open'),
(18, 18, 'Suspicious Login', 'Login from unknown location', 'Medium', '2026-06-05 12:05:00', 'Investigating'),
(20, 20, 'Blocked Account', 'Multiple attempts on blocked account', 'High', '2026-06-05 12:10:00', 'Open');


-- Table 6: Branches
CREATE TABLE branches (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100) NOT NULL,
    branch_code VARCHAR(20) UNIQUE NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    manager_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO branches (branch_name, branch_code, city, state, phone, manager_name) VALUES
('Mumbai Main Branch', 'MUM001', 'Mumbai', 'Maharashtra', '9876501001', 'Ramesh Shah'),
('Mumbai West Branch', 'MUM002', 'Mumbai', 'Maharashtra', '9876501002', 'Suresh Nair'),
('Delhi Central Branch', 'DEL001', 'Delhi', 'Delhi', '9876501003', 'Amit Khanna'),
('Delhi North Branch', 'DEL002', 'Delhi', 'Delhi', '9876501004', 'Priya Malhotra'),
('Chennai Main Branch', 'CHE001', 'Chennai', 'Tamil Nadu', '9876501005', 'Rajan Pillai'),
('Chennai South Branch', 'CHE002', 'Chennai', 'Tamil Nadu', '9876501006', 'Meena Iyer'),
('Pune Central Branch', 'PUN001', 'Pune', 'Maharashtra', '9876501007', 'Vijay Joshi'),
('Pune East Branch', 'PUN002', 'Pune', 'Maharashtra', '9876501008', 'Sneha Patil'),
('Bangalore Main Branch', 'BAN001', 'Bangalore', 'Karnataka', '9876501009', 'Kiran Kumar'),
('Bangalore North Branch', 'BAN002', 'Bangalore', 'Karnataka', '9876501010', 'Deepa Rao'),
('Hyderabad Main Branch', 'HYD001', 'Hyderabad', 'Telangana', '9876501011', 'Srinivas Reddy'),
('Hyderabad West Branch', 'HYD002', 'Hyderabad', 'Telangana', '9876501012', 'Lakshmi Devi'),
('Kolkata Main Branch', 'KOL001', 'Kolkata', 'West Bengal', '9876501013', 'Subhash Bose'),
('Kolkata East Branch', 'KOL002', 'Kolkata', 'West Bengal', '9876501014', 'Ananya Sen'),
('Jaipur Main Branch', 'JAI001', 'Jaipur', 'Rajasthan', '9876501015', 'Rajesh Sharma'),
('Jaipur West Branch', 'JAI002', 'Jaipur', 'Rajasthan', '9876501016', 'Sunita Gupta'),
('Ahmedabad Main Branch', 'AHM001', 'Ahmedabad', 'Gujarat', '9876501017', 'Nikhil Patel'),
('Ahmedabad East Branch', 'AHM002', 'Ahmedabad', 'Gujarat', '9876501018', 'Kavya Shah'),
('Lucknow Main Branch', 'LUC001', 'Lucknow', 'Uttar Pradesh', '9876501019', 'Arun Mishra'),
('Lucknow North Branch', 'LUC002', 'Lucknow', 'Uttar Pradesh', '9876501020', 'Pooja Singh'),
('Bhopal Main Branch', 'BHO001', 'Bhopal', 'Madhya Pradesh', '9876501021', 'Manoj Tiwari'),
('Bhopal East Branch', 'BHO002', 'Bhopal', 'Madhya Pradesh', '9876501022', 'Divya Yadav');

-- Table 7: Cards
CREATE TABLE cards (
    card_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT NOT NULL,
    customer_id INT NOT NULL,
    card_number VARCHAR(20) UNIQUE NOT NULL,
    card_type ENUM('Debit', 'Credit') NOT NULL,
    card_status ENUM('Active', 'Blocked', 'Expired') DEFAULT 'Active',
    expiry_date DATE NOT NULL,
    credit_limit DECIMAL(10,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO cards (account_id, customer_id, card_number, card_type, card_status, expiry_date, credit_limit) VALUES
(1, 1, '4111111111111001', 'Debit', 'Active', '2028-06-30', 0.00),
(2, 2, '4111111111111002', 'Credit', 'Active', '2027-12-31', 50000.00),
(3, 3, '4111111111111003', 'Debit', 'Active', '2029-03-31', 0.00),
(4, 4, '4111111111111004', 'Credit', 'Blocked', '2027-06-30', 75000.00),
(5, 5, '4111111111111005', 'Debit', 'Active', '2028-09-30', 0.00),
(6, 6, '4111111111111006', 'Credit', 'Active', '2027-03-31', 100000.00),
(7, 7, '4111111111111007', 'Debit', 'Expired', '2025-12-31', 0.00),
(8, 8, '4111111111111008', 'Credit', 'Blocked', '2027-09-30', 80000.00),
(9, 9, '4111111111111009', 'Debit', 'Active', '2029-06-30', 0.00),
(10, 10, '4111111111111010', 'Credit', 'Blocked', '2026-12-31', 60000.00),
(11, 11, '4111111111111011', 'Debit', 'Active', '2028-03-31', 0.00),
(12, 12, '4111111111111012', 'Credit', 'Active', '2027-06-30', 45000.00),
(13, 13, '4111111111111013', 'Debit', 'Active', '2029-09-30', 0.00),
(14, 14, '4111111111111014', 'Credit', 'Active', '2028-12-31', 55000.00),
(15, 15, '4111111111111015', 'Debit', 'Expired', '2025-06-30', 0.00),
(16, 16, '4111111111111016', 'Credit', 'Active', '2027-03-31', 90000.00),
(17, 17, '4111111111111017', 'Debit', 'Active', '2028-06-30', 0.00),
(18, 18, '4111111111111018', 'Credit', 'Blocked', '2026-09-30', 70000.00),
(19, 19, '4111111111111019', 'Debit', 'Active', '2029-03-31', 0.00),
(20, 20, '4111111111111020', 'Credit', 'Blocked', '2026-06-30', 65000.00),
(21, 21, '4111111111111021', 'Debit', 'Active', '2028-09-30', 0.00),
(22, 22, '4111111111111022', 'Credit', 'Active', '2027-12-31', 85000.00);

-- Table 8: Beneficiaries
CREATE TABLE beneficiaries (
    beneficiary_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    beneficiary_name VARCHAR(100) NOT NULL,
    beneficiary_account VARCHAR(20) NOT NULL,
    bank_name VARCHAR(100) NOT NULL,
    ifsc_code VARCHAR(20) NOT NULL,
    city VARCHAR(50),
    status ENUM('Active', 'Inactive') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO beneficiaries (customer_id, beneficiary_name, beneficiary_account, bank_name, ifsc_code, city, status) VALUES
(1, 'Rahul Sharma', 'BEN100001', 'SBI', 'SBIN0001001', 'Mumbai', 'Active'),
(1, 'Priya Mehta', 'BEN100002', 'HDFC', 'HDFC0001002', 'Delhi', 'Active'),
(2, 'Amit Kumar', 'BEN100003', 'ICICI', 'ICIC0001003', 'Chennai', 'Active'),
(3, 'Sneha Nair', 'BEN100004', 'Axis', 'UTIB0001004', 'Pune', 'Active'),
(4, 'Vijay Singh', 'BEN100005', 'SBI', 'SBIN0001005', 'Bangalore', 'Inactive'),
(5, 'Deepa Iyer', 'BEN100006', 'HDFC', 'HDFC0001006', 'Hyderabad', 'Active'),
(6, 'Karan Das', 'BEN100007', 'ICICI', 'ICIC0001007', 'Kolkata', 'Active'),
(7, 'Ananya Roy', 'BEN100008', 'Axis', 'UTIB0001008', 'Jaipur', 'Active'),
(8, 'Suresh Pillai', 'BEN100009', 'SBI', 'SBIN0001009', 'Mumbai', 'Inactive'),
(9, 'Meena Gupta', 'BEN100010', 'HDFC', 'HDFC0001010', 'Delhi', 'Active'),
(10, 'Ravi Verma', 'BEN100011', 'ICICI', 'ICIC0001011', 'Chennai', 'Active'),
(11, 'Pooja Reddy', 'BEN100012', 'Axis', 'UTIB0001012', 'Pune', 'Active'),
(12, 'Arun Joshi', 'BEN100013', 'SBI', 'SBIN0001013', 'Bangalore', 'Active'),
(13, 'Kavya Nair', 'BEN100014', 'HDFC', 'HDFC0001014', 'Hyderabad', 'Inactive'),
(14, 'Nikhil Kumar', 'BEN100015', 'ICICI', 'ICIC0001015', 'Kolkata', 'Active'),
(15, 'Sita Sharma', 'BEN100016', 'Axis', 'UTIB0001016', 'Jaipur', 'Active'),
(16, 'Manoj Iyer', 'BEN100017', 'SBI', 'SBIN0001017', 'Mumbai', 'Active'),
(17, 'Deepa Singh', 'BEN100018', 'HDFC', 'HDFC0001018', 'Delhi', 'Active'),
(18, 'Arjun Das', 'BEN100019', 'ICICI', 'ICIC0001019', 'Chennai', 'Inactive'),
(19, 'Lakshmi Roy', 'BEN100020', 'Axis', 'UTIB0001020', 'Pune', 'Active'),
(20, 'Rohit Pillai', 'BEN100021', 'SBI', 'SBIN0001021', 'Bangalore', 'Active'),
(21, 'Sunita Verma', 'BEN100022', 'HDFC', 'HDFC0001022', 'Hyderabad', 'Active');

-- Table 9: Devices
CREATE TABLE devices (
    device_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    device_name VARCHAR(100) NOT NULL,
    device_type ENUM('Mobile', 'Laptop', 'Tablet', 'Desktop') NOT NULL,
    operating_system VARCHAR(50),
    ip_address VARCHAR(50),
    location VARCHAR(100),
    status ENUM('Trusted', 'Suspicious', 'Blocked') DEFAULT 'Trusted',
    last_used TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO devices (customer_id, device_name, device_type, operating_system, ip_address, location, status) VALUES
(1, 'Amit iPhone 13', 'Mobile', 'iOS 16', '192.168.1.1', 'Mumbai', 'Trusted'),
(1, 'Amit MacBook', 'Laptop', 'MacOS', '192.168.1.2', 'Delhi', 'Suspicious'),
(1, 'Unknown Device', 'Mobile', 'Android 12', '192.168.1.3', 'Chennai', 'Blocked'),
(2, 'Priya Samsung S21', 'Mobile', 'Android 13', '192.168.2.1', 'Delhi', 'Trusted'),
(3, 'Rahul iPhone 12', 'Mobile', 'iOS 15', '192.168.3.1', 'Chennai', 'Trusted'),
(4, 'Sneha Laptop', 'Laptop', 'Windows 11', '192.168.4.1', 'Pune', 'Trusted'),
(4, 'Sneha Tablet', 'Tablet', 'Android 12', '192.168.4.2', 'Bangalore', 'Suspicious'),
(5, 'Karan Desktop', 'Desktop', 'Windows 10', '192.168.5.1', 'Bangalore', 'Trusted'),
(6, 'Divya iPhone 14', 'Mobile', 'iOS 16', '192.168.6.1', 'Hyderabad', 'Trusted'),
(7, 'Vijay Samsung A52', 'Mobile', 'Android 11', '192.168.7.1', 'Kolkata', 'Trusted'),
(7, 'Unknown Laptop', 'Laptop', 'Windows 10', '192.168.7.2', 'Delhi', 'Blocked'),
(8, 'Ananya iPhone 11', 'Mobile', 'iOS 15', '192.168.8.1', 'Jaipur', 'Trusted'),
(8, 'Unknown Mobile', 'Mobile', 'Android 10', '192.168.8.2', 'Mumbai', 'Blocked'),
(9, 'Suresh Laptop', 'Laptop', 'Windows 11', '192.168.9.1', 'Mumbai', 'Trusted'),
(10, 'Meena Tablet', 'Tablet', 'iOS 15', '192.168.10.1', 'Delhi', 'Suspicious'),
(10, 'Unknown Device', 'Mobile', 'Android 12', '192.168.10.2', 'Chennai', 'Blocked'),
(11, 'Ravi Samsung S20', 'Mobile', 'Android 13', '192.168.11.1', 'Chennai', 'Trusted'),
(12, 'Pooja iPhone 13', 'Mobile', 'iOS 16', '192.168.12.1', 'Pune', 'Trusted'),
(13, 'Arun Desktop', 'Desktop', 'Windows 10', '192.168.13.1', 'Bangalore', 'Trusted'),
(14, 'Kavya Laptop', 'Laptop', 'MacOS', '192.168.14.1', 'Hyderabad', 'Trusted'),
(15, 'Nikhil Mobile', 'Mobile', 'Android 11', '192.168.15.1', 'Kolkata', 'Trusted'),
(16, 'Sita iPhone 12', 'Mobile', 'iOS 15', '192.168.16.1', 'Jaipur', 'Trusted');

-- Table 10: OTPs
CREATE TABLE otps (
    otp_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    otp_code VARCHAR(10) NOT NULL,
    otp_type ENUM('Login', 'Transaction', 'Password Reset') NOT NULL,
    status ENUM('Used', 'Expired', 'Pending') DEFAULT 'Pending',
    generated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    attempts INT DEFAULT 0,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO otps (customer_id, otp_code, otp_type, status, generated_at, expires_at, attempts) VALUES
(1, '123456', 'Login', 'Used', '2026-06-01 08:54:00', '2026-06-01 08:59:00', 1),
(1, '234567', 'Transaction', 'Expired', '2026-06-01 08:58:00', '2026-06-01 09:03:00', 3),
(1, '345678', 'Password Reset', 'Used', '2026-06-01 09:00:00', '2026-06-01 09:05:00', 1),
(2, '456789', 'Login', 'Used', '2026-06-01 09:00:00', '2026-06-01 09:05:00', 1),
(3, '567890', 'Transaction', 'Used', '2026-06-02 10:00:00', '2026-06-02 10:05:00', 1),
(4, '678901', 'Login', 'Expired', '2026-06-02 10:01:00', '2026-06-02 10:06:00', 3),
(4, '789012', 'Transaction', 'Used', '2026-06-02 11:00:00', '2026-06-02 11:05:00', 2),
(5, '890123', 'Login', 'Used', '2026-06-02 11:00:00', '2026-06-02 11:05:00', 1),
(6, '901234', 'Transaction', 'Used', '2026-06-03 09:00:00', '2026-06-03 09:05:00', 1),
(7, '012345', 'Login', 'Expired', '2026-06-03 09:04:00', '2026-06-03 09:09:00', 3),
(7, '112345', 'Password Reset', 'Used', '2026-06-03 09:08:00', '2026-06-03 09:13:00', 1),
(8, '223456', 'Transaction', 'Expired', '2026-06-03 10:01:00', '2026-06-03 10:06:00', 3),
(8, '334567', 'Login', 'Used', '2026-06-03 10:03:00', '2026-06-03 10:08:00', 2),
(9, '445678', 'Transaction', 'Used', '2026-06-03 11:00:00', '2026-06-03 11:05:00', 1),
(10, '556789', 'Login', 'Expired', '2026-06-04 09:59:00', '2026-06-04 10:04:00', 3),
(10, '667890', 'Password Reset', 'Pending', '2026-06-04 10:03:00', '2026-06-04 10:08:00', 0),
(11, '778901', 'Transaction', 'Used', '2026-06-04 09:02:00', '2026-06-04 09:07:00', 1),
(12, '889012', 'Login', 'Used', '2026-06-04 10:00:00', '2026-06-04 10:05:00', 1),
(13, '990123', 'Transaction', 'Used', '2026-06-05 09:00:00', '2026-06-05 09:05:00', 1),
(14, '101234', 'Login', 'Used', '2026-06-05 10:00:00', '2026-06-05 10:05:00', 1),
(15, '202345', 'Transaction', 'Pending', '2026-06-05 11:00:00', '2026-06-05 11:05:00', 0),
(16, '303456', 'Login', 'Used', '2026-06-05 11:01:00', '2026-06-05 11:06:00', 1);

-- Table 11: Blacklist
CREATE TABLE blacklist (
    blacklist_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    reason VARCHAR(255) NOT NULL,
    blacklisted_by VARCHAR(100) NOT NULL,
    blacklist_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Active', 'Removed') DEFAULT 'Active',
    remarks TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO blacklist (customer_id, reason, blacklisted_by, blacklist_date, status, remarks) VALUES
(1, 'Multiple fraud transactions detected', 'Risk Team', '2026-06-01 10:00:00', 'Active', 'Customer flagged for immediate investigation'),
(4, 'Large suspicious transfers', 'Risk Team', '2026-06-02 12:00:00', 'Active', 'Two transfers above 60000 in 5 minutes'),
(7, 'Multiple failed login attempts', 'Security Team', '2026-06-03 10:00:00', 'Active', 'Possible hacking attempt detected'),
(8, 'Large withdrawals from multiple cities', 'Risk Team', '2026-06-03 11:00:00', 'Active', 'Withdrawals from Delhi and Chennai in 2 minutes'),
(10, 'Blocked account activity', 'Security Team', '2026-06-04 10:00:00', 'Removed', 'Issue resolved after investigation'),
(11, 'Suspicious location transactions', 'Risk Team', '2026-06-04 10:00:00', 'Active', 'Transactions from multiple cities detected'),
(16, 'Multiple high value withdrawals', 'Risk Team', '2026-06-05 12:00:00', 'Active', 'Withdrawals above limit in short time'),
(20, 'Blocked account misuse', 'Security Team', '2026-06-05 12:00:00', 'Active', 'Multiple attempts on blocked account'),
(2, 'Suspicious large deposit', 'Risk Team', '2026-06-01 11:00:00', 'Removed', 'Verified legitimate deposit'),
(3, 'Unusual withdrawal pattern', 'Risk Team', '2026-06-02 12:00:00', 'Removed', 'Customer verified identity'),
(5, 'Login from unknown location', 'Security Team', '2026-06-02 13:00:00', 'Removed', 'Customer confirmed travel'),
(6, 'Large balance movement', 'Risk Team', '2026-06-03 10:00:00', 'Removed', 'Business account verified'),
(9, 'Transfer to unknown account', 'Risk Team', '2026-06-03 12:00:00', 'Active', 'Under investigation'),
(12, 'New device login', 'Security Team', '2026-06-04 11:00:00', 'Removed', 'Customer confirmed new device'),
(13, 'Large transfer to new beneficiary', 'Risk Team', '2026-06-05 10:00:00', 'Active', 'Beneficiary details being verified'),
(14, 'Unusual transaction time', 'Security Team', '2026-06-05 11:00:00', 'Removed', 'Customer confirmed transaction'),
(15, 'Pending transaction issue', 'Risk Team', '2026-06-05 12:00:00', 'Removed', 'Technical issue resolved'),
(17, 'Large balance movement', 'Risk Team', '2026-06-05 13:00:00', 'Active', 'Under investigation'),
(18, 'Login from unknown location', 'Security Team', '2026-06-05 13:00:00', 'Active', 'Customer not reachable'),
(19, 'Suspicious transfer pattern', 'Risk Team', '2026-06-05 14:00:00', 'Removed', 'Customer verified transaction'),
(21, 'Multiple OTP attempts', 'Security Team', '2026-06-05 14:00:00', 'Active', 'Possible hacking attempt'),
(22, 'Unusual login pattern', 'Security Team', '2026-06-05 15:00:00', 'Removed', 'Customer confirmed login');

-- Table 12: Investigation
CREATE TABLE investigation (
    investigation_id INT PRIMARY KEY AUTO_INCREMENT,
    alert_id INT NOT NULL,
    customer_id INT NOT NULL,
    assigned_to VARCHAR(100) NOT NULL,
    investigation_status ENUM('Open', 'In Progress', 'Closed') DEFAULT 'Open',
    priority ENUM('Low', 'Medium', 'High', 'Critical') DEFAULT 'Medium',
    started_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    closed_date TIMESTAMP NULL,
    findings TEXT,
    action_taken TEXT,
    FOREIGN KEY (alert_id) REFERENCES fraud_alerts(alert_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO investigation (alert_id, customer_id, assigned_to, investigation_status, priority, started_date, closed_date, findings, action_taken) VALUES
(1, 1, 'Rajesh Kumar', 'In Progress', 'Critical', '2026-06-01 10:00:00', NULL, 'Multiple city transactions detected', 'Account temporarily blocked'),
(2, 1, 'Priya Sharma', 'In Progress', 'High', '2026-06-01 10:30:00', NULL, 'Failed logins from different cities', 'Password reset initiated'),
(3, 4, 'Amit Singh', 'Open', 'Critical', '2026-06-02 12:00:00', NULL, 'Large transfers detected', 'Under investigation'),
(4, 4, 'Deepa Nair', 'Open', 'High', '2026-06-02 12:30:00', NULL, 'Suspicious login pattern', 'Device blocked'),
(5, 7, 'Vijay Iyer', 'In Progress', 'High', '2026-06-03 10:00:00', NULL, 'Multiple failed logins', 'Account under review'),
(6, 8, 'Sneha Pillai', 'Open', 'Critical', '2026-06-03 11:00:00', NULL, 'Large withdrawals detected', 'Withdrawals blocked'),
(7, 10, 'Karan Verma', 'Closed', 'Medium', '2026-06-04 09:00:00', '2026-06-04 11:00:00', 'Blocked account transaction', 'Account verified and unblocked'),
(8, 10, 'Ananya Das', 'Open', 'High', '2026-06-04 10:00:00', NULL, 'Multiple failed logins', 'Security alert sent'),
(9, 11, 'Suresh Menon', 'In Progress', 'Critical', '2026-06-04 10:00:00', NULL, 'Suspicious city transactions', 'Customer contacted'),
(10, 16, 'Meena Joshi', 'Open', 'Critical', '2026-06-05 12:00:00', NULL, 'High value withdrawals', 'Transaction limit reduced'),
(11, 2, 'Ravi Tiwari', 'Closed', 'Low', '2026-06-01 11:00:00', '2026-06-01 13:00:00', 'Large deposit verified', 'No action needed'),
(12, 3, 'Pooja Gupta', 'Closed', 'Low', '2026-06-02 12:00:00', '2026-06-02 14:00:00', 'Withdrawal pattern normal', 'Case closed'),
(13, 5, 'Arun Kumar', 'Closed', 'Low', '2026-06-02 13:00:00', '2026-06-02 15:00:00', 'Travel confirmed by customer', 'Case closed'),
(14, 6, 'Kavya Singh', 'Closed', 'Low', '2026-06-03 10:00:00', '2026-06-03 12:00:00', 'Business account verified', 'Case closed'),
(15, 9, 'Nikhil Sharma', 'In Progress', 'Medium', '2026-06-03 12:00:00', NULL, 'Transfer to unknown account', 'Beneficiary details checked'),
(16, 12, 'Sita Iyer', 'Closed', 'Low', '2026-06-04 11:00:00', '2026-06-04 13:00:00', 'New device confirmed', 'Device added to trusted list'),
(17, 13, 'Manoj Pillai', 'In Progress', 'Medium', '2026-06-05 10:00:00', NULL, 'Large transfer investigation', 'Beneficiary verification pending'),
(18, 14, 'Deepa Verma', 'Closed', 'Low', '2026-06-05 11:00:00', '2026-06-05 13:00:00', 'Transaction confirmed by customer', 'Case closed'),
(19, 15, 'Arjun Das', 'Closed', 'Low', '2026-06-05 12:00:00', '2026-06-05 14:00:00', 'Technical issue resolved', 'Case closed'),
(20, 17, 'Lakshmi Nair', 'In Progress', 'Medium', '2026-06-05 13:00:00', NULL, 'Balance movement under review', 'Customer contacted'),
(21, 18, 'Rohit Sharma', 'Open', 'High', '2026-06-05 13:00:00', NULL, 'Unknown location login', 'Customer not reachable'),
(22, 20, 'Sunita Pillai', 'Open', 'Critical', '2026-06-05 15:00:00', NULL, 'Blocked account misuse', 'Immediate action required');

-- Table 13: Notifications
CREATE TABLE notifications (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    notification_type ENUM('SMS', 'Email', 'App') NOT NULL,
    message TEXT NOT NULL,
    status ENUM('Sent', 'Failed', 'Pending') DEFAULT 'Pending',
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    read_status ENUM('Read', 'Unread') DEFAULT 'Unread',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO notifications (customer_id, notification_type, message, status, sent_at, read_status) VALUES
(1, 'SMS', 'Alert: Suspicious transaction detected on your account', 'Sent', '2026-06-01 09:15:00', 'Read'),
(1, 'Email', 'Your account has been temporarily blocked due to suspicious activity', 'Sent', '2026-06-01 09:20:00', 'Read'),
(1, 'App', 'Multiple login attempts detected on your account', 'Sent', '2026-06-01 09:25:00', 'Unread'),
(2, 'SMS', 'Large deposit of 50000 detected on your account', 'Sent', '2026-06-01 10:10:00', 'Read'),
(3, 'Email', 'Unusual withdrawal pattern detected', 'Sent', '2026-06-02 11:10:00', 'Read'),
(4, 'SMS', 'Alert: Large transfer detected on your account', 'Sent', '2026-06-02 11:15:00', 'Unread'),
(4, 'App', 'Suspicious login detected from new location', 'Sent', '2026-06-02 11:20:00', 'Unread'),
(5, 'Email', 'Login detected from new location', 'Sent', '2026-06-02 12:10:00', 'Read'),
(6, 'SMS', 'Large balance movement detected', 'Sent', '2026-06-03 09:10:00', 'Read'),
(7, 'App', 'Multiple failed login attempts detected', 'Sent', '2026-06-03 09:15:00', 'Unread'),
(7, 'SMS', 'Your account password has been reset', 'Sent', '2026-06-03 09:20:00', 'Read'),
(8, 'Email', 'Alert: Large withdrawals detected on your account', 'Sent', '2026-06-03 10:10:00', 'Unread'),
(8, 'App', 'Suspicious transaction blocked successfully', 'Sent', '2026-06-03 10:15:00', 'Unread'),
(9, 'SMS', 'Transfer to new beneficiary detected', 'Sent', '2026-06-03 11:10:00', 'Read'),
(10, 'Email', 'Multiple failed login attempts on your account', 'Failed', '2026-06-04 10:10:00', 'Unread'),
(10, 'App', 'Your account has been flagged for review', 'Sent', '2026-06-04 10:15:00', 'Unread'),
(11, 'SMS', 'Suspicious transaction detected from new city', 'Sent', '2026-06-04 09:15:00', 'Read'),
(12, 'Email', 'New device login detected on your account', 'Sent', '2026-06-04 10:10:00', 'Read'),
(13, 'App', 'Large transfer to new beneficiary detected', 'Sent', '2026-06-05 09:10:00', 'Unread'),
(14, 'SMS', 'Transaction completed successfully', 'Sent', '2026-06-05 10:10:00', 'Read'),
(15, 'Email', 'Your transaction is pending. Please contact bank', 'Sent', '2026-06-05 11:10:00', 'Unread'),
(16, 'App', 'Alert: High value withdrawal detected', 'Sent', '2026-06-05 11:10:00', 'Unread');

-- Table 14: Risk Scores
CREATE TABLE risk_scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    score INT NOT NULL,
    score_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    risk_category ENUM('Low', 'Medium', 'High', 'Critical') NOT NULL,
    reason VARCHAR(255),
    calculated_by ENUM('System', 'Manual') DEFAULT 'System',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO risk_scores (customer_id, score, score_date, risk_category, reason, calculated_by) VALUES
(1, 95, '2026-06-01 10:00:00', 'Critical', 'Multiple city transactions and failed logins', 'System'),
(1, 98, '2026-06-02 10:00:00', 'Critical', 'Continued suspicious activity', 'Manual'),
(2, 25, '2026-06-01 10:00:00', 'Low', 'Normal transaction pattern', 'System'),
(3, 30, '2026-06-02 10:00:00', 'Low', 'Regular account activity', 'System'),
(4, 85, '2026-06-02 12:00:00', 'High', 'Large transfers and suspicious login', 'System'),
(4, 90, '2026-06-03 10:00:00', 'Critical', 'Continued high risk activity', 'Manual'),
(5, 20, '2026-06-02 12:00:00', 'Low', 'Normal login and transactions', 'System'),
(6, 35, '2026-06-03 10:00:00', 'Low', 'Regular business account', 'System'),
(7, 80, '2026-06-03 10:00:00', 'High', 'Multiple failed logins detected', 'System'),
(7, 88, '2026-06-04 10:00:00', 'High', 'Suspicious device activity', 'Manual'),
(8, 92, '2026-06-03 11:00:00', 'Critical', 'Large withdrawals from multiple cities', 'System'),
(9, 45, '2026-06-03 12:00:00', 'Medium', 'Transfer to unknown beneficiary', 'System'),
(10, 75, '2026-06-04 10:00:00', 'High', 'Blocked account activity and failed logins', 'System'),
(11, 82, '2026-06-04 10:00:00', 'High', 'Suspicious city transactions', 'System'),
(12, 15, '2026-06-04 11:00:00', 'Low', 'New device verified by customer', 'Manual'),
(13, 50, '2026-06-05 10:00:00', 'Medium', 'Large transfer to new beneficiary', 'System'),
(14, 10, '2026-06-05 11:00:00', 'Low', 'Normal transaction activity', 'System'),
(15, 20, '2026-06-05 12:00:00', 'Low', 'Pending transaction resolved', 'System'),
(16, 88, '2026-06-05 12:00:00', 'High', 'Multiple high value withdrawals', 'System'),
(17, 40, '2026-06-05 13:00:00', 'Medium', 'Large balance movement', 'System'),
(18, 60, '2026-06-05 13:00:00', 'Medium', 'Unknown location login', 'System'),
(20, 78, '2026-06-05 15:00:00', 'High', 'Blocked account misuse detected', 'System');

-- Table 15: Audit Logs
CREATE TABLE audit_logs (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    action_type ENUM('Insert', 'Update', 'Delete', 'Login', 'Logout') NOT NULL,
    table_name VARCHAR(100) NOT NULL,
    description TEXT,
    performed_by VARCHAR(100) NOT NULL,
    ip_address VARCHAR(50),
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Success', 'Failed') DEFAULT 'Success',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO audit_logs (customer_id, action_type, table_name, description, performed_by, ip_address, status) VALUES
(1, 'Login', 'login_logs', 'Customer logged in successfully', 'Amit Sharma', '192.168.1.1', 'Success'),
(1, 'Insert', 'transactions', 'New transaction created', 'Amit Sharma', '192.168.1.1', 'Success'),
(1, 'Update', 'accounts', 'Account balance updated', 'System', '192.168.1.1', 'Success'),
(1, 'Login', 'login_logs', 'Failed login attempt', 'Unknown', '192.168.1.3', 'Failed'),
(2, 'Login', 'login_logs', 'Customer logged in successfully', 'Priya Singh', '192.168.2.1', 'Success'),
(2, 'Insert', 'transactions', 'Large deposit recorded', 'Priya Singh', '192.168.2.1', 'Success'),
(3, 'Login', 'login_logs', 'Customer logged in successfully', 'Rahul Verma', '192.168.3.1', 'Success'),
(4, 'Insert', 'transactions', 'Large transfer created', 'Sneha Patel', '192.168.4.1', 'Success'),
(4, 'Login', 'login_logs', 'Failed login from unknown device', 'Unknown', '192.168.4.2', 'Failed'),
(5, 'Login', 'login_logs', 'Customer logged in successfully', 'Karan Mehta', '192.168.5.1', 'Success'),
(6, 'Insert', 'transactions', 'Normal transaction recorded', 'Divya Nair', '192.168.6.1', 'Success'),
(7, 'Login', 'login_logs', 'Multiple failed login attempts', 'Unknown', '192.168.7.2', 'Failed'),
(7, 'Update', 'accounts', 'Password reset performed', 'Security Team', '192.168.7.1', 'Success'),
(8, 'Insert', 'transactions', 'Large withdrawal recorded', 'Ananya Roy', '192.168.8.1', 'Success'),
(8, 'Update', 'fraud_alerts', 'Fraud alert status updated', 'Risk Team', '192.168.8.1', 'Success'),
(9, 'Insert', 'transactions', 'Transfer to beneficiary recorded', 'Suresh Iyer', '192.168.9.1', 'Success'),
(10, 'Login', 'login_logs', 'Multiple failed logins detected', 'Unknown', '192.168.10.2', 'Failed'),
(10, 'Update', 'accounts', 'Account blocked by security team', 'Security Team', '192.168.10.1', 'Success'),
(11, 'Insert', 'transactions', 'Suspicious transaction recorded', 'Ravi Tiwari', '192.168.11.1', 'Success'),
(12, 'Login', 'login_logs', 'New device login recorded', 'Pooja Gupta', '192.168.12.1', 'Success'),
(13, 'Insert', 'transactions', 'Large transfer to new beneficiary', 'Arun Das', '192.168.13.1', 'Success'),
(16, 'Insert', 'transactions', 'High value withdrawal recorded', 'Sita Pillai', '192.168.16.1', 'Success');

-- 1.multiple location in short time
SELECT 
    c.full_name,
    t.account_id,
    COUNT(t.transaction_id) AS total_transactions,
    COUNT(DISTINCT t.location) AS different_locations,
    MIN(t.transaction_date) AS first_transaction,
    MAX(t.transaction_date) AS last_transaction
FROM transactions t
JOIN customers c 
ON t.account_id = c.customer_id
GROUP BY c.full_name, t.account_id
HAVING COUNT(DISTINCT t.location) > 1
ORDER BY different_locations DESC;

-- 2.large amount transaction
SELECT 
    c.full_name,
    t.account_id,
    t.transaction_type,
    t.amount,
    t.location,
    t.transaction_date,
    t.status
FROM transactions t
JOIN customers c
ON t.account_id = c.customer_id
WHERE t.amount > 50000
ORDER BY t.amount DESC;

-- 3.multiple failed logins
SELECT 
    c.full_name,
    l.customer_id,
    COUNT(l.log_id) AS total_attempts,
    SUM(CASE WHEN l.status = 'Failed' 
        THEN 1 ELSE 0 END) AS failed_attempts,
    COUNT(DISTINCT l.ip_address) AS different_devices,
    COUNT(DISTINCT l.location) AS different_locations,
    MIN(l.login_time) AS first_attempt,
    MAX(l.login_time) AS last_attempt
FROM login_logs l
JOIN customers c
ON l.customer_id = c.customer_id
GROUP BY c.full_name, l.customer_id
HAVING SUM(CASE WHEN l.status = 'Failed' 
    THEN 1 ELSE 0 END) >= 2
ORDER BY failed_attempts DESC;

-- 4.blocked account activity
SELECT 
    c.full_name,
    a.account_number,
    a.account_type,
    a.status AS account_status,
    t.transaction_type,
    t.amount,
    t.location,
    t.transaction_date
FROM transactions t
JOIN accounts a
ON t.account_id = a.account_id
JOIN customers c
ON a.customer_id = c.customer_id
WHERE a.status = 'Blocked'
ORDER BY t.transaction_date DESC;

-- 5.high risk alerts
SELECT 
    c.full_name,
    f.alert_type,
    f.alert_description,
    f.risk_level,
    f.alert_date,
    f.status AS alert_status
FROM fraud_alerts f
JOIN customers c
ON f.customer_id = c.customer_id
WHERE f.risk_level = 'High'
ORDER BY f.alert_date DESC;

-- 6.customer wise fraud report
SELECT 
    c.full_name,
    c.city,
    COUNT(DISTINCT f.alert_id) AS total_alerts,
    SUM(CASE WHEN f.risk_level = 'High' 
        THEN 1 ELSE 0 END) AS high_risk_count,
    SUM(CASE WHEN f.risk_level = 'Medium' 
        THEN 1 ELSE 0 END) AS medium_risk_count,
    SUM(CASE WHEN f.risk_level = 'Low' 
        THEN 1 ELSE 0 END) AS low_risk_count,
    SUM(CASE WHEN f.status = 'Open' 
        THEN 1 ELSE 0 END) AS open_alerts,
    CASE 
        WHEN SUM(CASE WHEN f.risk_level = 'High' 
            THEN 1 ELSE 0 END) >= 2 
            THEN 'Extremely Suspicious'
        WHEN SUM(CASE WHEN f.risk_level = 'High' 
            THEN 1 ELSE 0 END) = 1 
            THEN 'Suspicious'
        ELSE 'Normal'
    END AS customer_risk_status
FROM fraud_alerts f
JOIN customers c
ON f.customer_id = c.customer_id
GROUP BY c.full_name, c.city
ORDER BY high_risk_count DESC;

-- 7.blocked cards activity
SELECT 
    c.full_name,
    c.city,
    ca.card_number,
    ca.card_type,
    ca.card_status,
    ca.expiry_date,
    ca.credit_limit
FROM cards ca
JOIN customers c
ON ca.customer_id = c.customer_id
WHERE ca.card_status = 'Blocked' 
OR ca.card_status = 'Expired'
ORDER BY ca.card_status ASC;

-- 8.blacklisted customers report
SELECT 
    c.full_name,
    c.city,
    b.reason,
    b.blacklisted_by,
    b.blacklist_date,
    b.status AS blacklist_status,
    b.remarks
FROM blacklist b
JOIN customers c
ON b.customer_id = c.customer_id
WHERE b.status = 'Active'
ORDER BY b.blacklist_date DESC;

-- 9.high risk score customers
SELECT 
    c.full_name,
    c.city,
    r.score,
    r.risk_category,
    r.reason,
    r.calculated_by,
    r.score_date
FROM risk_scores r
JOIN customers c
ON r.customer_id = c.customer_id
WHERE r.risk_category IN ('High', 'Critical')
ORDER BY r.score DESC;

-- 10.unread fraud notifications
SELECT 
    c.full_name,
    c.city,
    n.notification_type,
    n.message,
    n.status,
    n.sent_at,
    n.read_status
FROM notifications n
JOIN customers c
ON n.customer_id = c.customer_id
WHERE n.read_status = 'Unread'
AND n.status = 'Sent'
ORDER BY n.sent_at DESC;

-- 11.Beneficiaries added by each customer
SELECT c.full_name, COUNT(b.beneficiary_id) AS total_beneficiaries
FROM beneficiaries b
JOIN customers c ON b.customer_id = c.customer_id
GROUP BY c.full_name
ORDER BY total_beneficiaries DESC;

-- 12.Give expired OTPs
SELECT c.full_name, o.otp_code, o.otp_type, o.generated_at, o.expires_at
FROM otps o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'Expired';

show tables;
truncate notifications;

-- 13.critical investigation report
SELECT 
    c.full_name,
    c.city,
    i.assigned_to,
    i.investigation_status,
    i.priority,
    i.started_date,
    i.findings,
    i.action_taken
FROM investigation i
JOIN customers c
ON i.customer_id = c.customer_id
WHERE i.priority = 'Critical'
AND i.investigation_status != 'Closed'
ORDER BY i.started_date DESC;

-- 14.suspicious devices report
SELECT 
    c.full_name,
    c.city,
    d.device_name,
    d.device_type,
    d.operating_system,
    d.ip_address,
    d.location,
    d.status AS device_status,
    d.last_used
FROM devices d
JOIN customers c
ON d.customer_id = c.customer_id
WHERE d.status IN ('Suspicious', 'Blocked')
ORDER BY d.status ASC;

-- 15.above average transaction amount
SELECT 
    c.full_name,
    c.city,
    t.transaction_type,
    t.amount,
    t.location,
    t.transaction_date,
    (SELECT AVG(amount) 
     FROM transactions) AS average_amount
FROM transactions t
JOIN customers c
ON t.account_id = c.customer_id
WHERE t.amount > (SELECT AVG(amount) 
                  FROM transactions)
ORDER BY t.amount DESC;

-- 16.Customers above average balance
SELECT full_name, customer_id
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM accounts
    WHERE balance > (SELECT AVG(balance) FROM accounts)
);

-- 17.Accounts with below average transactions
SELECT account_id, COUNT(*) AS txn_count
FROM transactions
GROUP BY account_id
HAVING COUNT(*) < (
    SELECT AVG(txn_count) FROM (
        SELECT COUNT(*) AS txn_count FROM transactions GROUP BY account_id
    ) AS t
);

-- 18.Customers with highest risk score
SELECT full_name, customer_id
FROM customers
WHERE customer_id = (
    SELECT customer_id FROM risk_scores
    ORDER BY score DESC LIMIT 1
);

-- 19.customers with most fraud alerts
SELECT 
    c.full_name,
    c.city,
    COUNT(f.alert_id) AS total_alerts,
    (SELECT COUNT(alert_id) 
     FROM fraud_alerts) AS total_alerts_in_system
FROM fraud_alerts f
JOIN customers c
ON f.customer_id = c.customer_id
WHERE f.customer_id IN 
    (SELECT customer_id 
     FROM fraud_alerts 
     GROUP BY customer_id 
     HAVING COUNT(alert_id) > 1)
GROUP BY c.full_name, c.city
ORDER BY total_alerts DESC;

-- 20.search customers by city using like
SELECT 
    c.full_name,
    c.city,
    c.phone,
    c.email,
    COUNT(f.alert_id) AS total_fraud_alerts,
    SUM(CASE WHEN f.risk_level = 'High' 
        THEN 1 ELSE 0 END) AS high_risk_alerts
FROM customers c
LEFT JOIN fraud_alerts f
ON c.customer_id = f.customer_id
WHERE c.city LIKE 'M%'
GROUP BY c.full_name, c.city, 
c.phone, c.email
ORDER BY total_fraud_alerts DESC;

-- 21.suspicious transactions by location using like 
SELECT 
    c.full_name,
    t.transaction_type,
    t.amount,
    t.location,
    t.transaction_date,
    t.status,
    (SELECT AVG(amount) 
     FROM transactions) AS avg_amount
FROM transactions t
JOIN customers c
ON t.account_id = c.customer_id
WHERE t.location LIKE '%a%'
AND t.amount > (SELECT AVG(amount) 
                FROM transactions)
ORDER BY t.amount DESC;

-- 22.customers worse than average risk score
SELECT 
    c.full_name,
    c.city,
    r.score,
    r.risk_category,
    r.reason,
    r.score_date,
    (SELECT AVG(score) 
     FROM risk_scores) AS average_score
FROM risk_scores r
JOIN customers c
ON r.customer_id = c.customer_id
WHERE r.score > (SELECT AVG(score) 
                 FROM risk_scores)
AND r.risk_category LIKE '%igh%'
ORDER BY r.score DESC;

-- 23.all fraud related to mumbai
SELECT 
    c.full_name,
    c.city AS customer_city,
    t.transaction_type,
    t.amount,
    t.location AS transaction_location,
    t.transaction_date,
    f.alert_type,
    f.risk_level
FROM transactions t
JOIN customers c
ON t.account_id = c.customer_id
LEFT JOIN fraud_alerts f
ON c.customer_id = f.customer_id
WHERE t.location LIKE '%Mumbai%'
OR c.city LIKE '%Mumbai%'
OR f.alert_description LIKE '%Mumbai%'
ORDER BY t.amount DESC;

-- 24.auto update fraud alert status
DELIMITER //

CREATE TRIGGER update_fraud_status
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
    DECLARE trans_count INT;
    DECLARE location_count INT;
    
    -- Count transactions for this account
    SELECT COUNT(*) INTO trans_count
    FROM transactions
    WHERE account_id = NEW.account_id
    AND transaction_date >= NOW() - INTERVAL 1 HOUR;
    
    -- Count different locations
    SELECT COUNT(DISTINCT location) INTO location_count
    FROM transactions
    WHERE account_id = NEW.account_id
    AND transaction_date >= NOW() - INTERVAL 1 HOUR;
    
    -- If suspicious automatically insert fraud alert
    IF trans_count >= 3 AND location_count >= 2 THEN
        INSERT INTO fraud_alerts 
        (customer_id, account_id, alert_type, 
         alert_description, risk_level, status)
        SELECT 
            a.customer_id,
            NEW.account_id,
            'Multiple Locations',
            'Auto detected: Multiple transactions from different locations',
            'High',
            'Open'
        FROM accounts a
        WHERE a.account_id = NEW.account_id;
    END IF;
END //

DELIMITER ;

-- 25.auto blacklist high risk customer
DELIMITER //

CREATE TRIGGER auto_blacklist_customer
AFTER INSERT ON fraud_alerts
FOR EACH ROW
BEGIN
    DECLARE alert_count INT;
    DECLARE already_blacklisted INT;
    
    -- Count high risk alerts for this customer
    SELECT COUNT(*) INTO alert_count
    FROM fraud_alerts
    WHERE customer_id = NEW.customer_id
    AND risk_level = 'High';
    
    -- Check if already blacklisted
    SELECT COUNT(*) INTO already_blacklisted
    FROM blacklist
    WHERE customer_id = NEW.customer_id
    AND status = 'Active';
    
    -- If 2 or more high risk alerts
    -- and not already blacklisted
    -- automatically add to blacklist!
    IF alert_count >= 2 
    AND already_blacklisted = 0 THEN
        INSERT INTO blacklist
        (customer_id, reason, 
         blacklisted_by, status, remarks)
        VALUES
        (NEW.customer_id,
         'Auto blacklisted: Multiple high risk alerts detected',
         'System',
         'Active',
         'Automatically blacklisted by fraud detection system');
    END IF;
END //

DELIMITER ;
show triggers;

-- 26. To get Customer fraud report
DELIMITER //

CREATE PROCEDURE GetCustomerFraudReport
(IN p_customer_id INT)
BEGIN
    -- Section 1: Customer Basic Details
    SELECT 
        c.customer_id,
        c.full_name,
        c.email,
        c.phone,
        c.city
    FROM customers c
    WHERE c.customer_id = p_customer_id;
    
    -- Section 2: Account Details
    SELECT 
        a.account_number,
        a.account_type,
        a.balance,
        a.status AS account_status
    FROM accounts a
    WHERE a.customer_id = p_customer_id;
    
    -- Section 3: Transaction Summary
    SELECT 
        COUNT(*) AS total_transactions,
        SUM(amount) AS total_amount,
        MAX(amount) AS highest_transaction,
        AVG(amount) AS average_transaction
    FROM transactions t
    JOIN accounts a
    ON t.account_id = a.account_id
    WHERE a.customer_id = p_customer_id;
    
    -- Section 4: Fraud Alerts
    SELECT 
        alert_type,
        risk_level,
        alert_description,
        status AS alert_status,
        alert_date
    FROM fraud_alerts
    WHERE customer_id = p_customer_id
    ORDER BY alert_date DESC;
    
    -- Section 5: Risk Score
    SELECT 
        score,
        risk_category,
        reason,
        score_date
    FROM risk_scores
    WHERE customer_id = p_customer_id
    ORDER BY score_date DESC
    LIMIT 1;

DELIMITER ;

CALL Getcustomerfraudreport(1);

-- 27.window functions RANK()
SELECT 
    c.full_name,
    c.city,
    t.transaction_type,
    t.amount,
    t.location,
    t.transaction_date,
    RANK() OVER (
        ORDER BY t.amount DESC
    ) AS transaction_rank
FROM transactions t
JOIN customers c
ON t.account_id = c.customer_id
ORDER BY transaction_rank;

-- 28.window functions LAG()
SELECT 
    c.full_name,
    t.account_id,
    t.amount,
    t.location,
    t.transaction_date,
    LAG(t.amount) OVER (
        PARTITION BY t.account_id
        ORDER BY t.transaction_date
    ) AS previous_amount,
    t.amount - LAG(t.amount) OVER (
        PARTITION BY t.account_id
        ORDER BY t.transaction_date
    ) AS amount_difference
FROM transactions t
JOIN customers c
ON t.account_id = c.customer_id
ORDER BY t.account_id, t.transaction_date; 

-- 29.window functions SUM() OVER()
SELECT 
    c.full_name,
    t.account_id,
    t.transaction_type,
    t.amount,
    t.location,
    t.transaction_date,
    SUM(t.amount) OVER (
        PARTITION BY t.account_id
        ORDER BY t.transaction_date
    ) AS running_total,
    SUM(t.amount) OVER (
        PARTITION BY t.account_id
    ) AS account_total
FROM transactions t
JOIN customers c
ON t.account_id = c.customer_id
ORDER BY t.account_id, t.transaction_date;

-- 30.Rank branches by total account balance
SELECT 
    br.branch_name,
    br.city,
    SUM(a.balance) AS total_balance,
    RANK() OVER (ORDER BY SUM(a.balance) DESC) AS branch_rank
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id
JOIN branches br ON br.city = c.city
GROUP BY br.branch_name, br.city
ORDER BY branch_rank;

-- 31.Customers whose risk score increased over time
SELECT 
    c.full_name,
    r.score,
    r.score_date,
    LAG(r.score) OVER (
        PARTITION BY r.customer_id 
        ORDER BY r.score_date
    ) AS previous_score
FROM risk_scores r
JOIN customers c ON r.customer_id = c.customer_id
WHERE r.score > (
    SELECT AVG(score) FROM risk_scores
)
ORDER BY c.full_name, r.score_date;

-- 32.Devices used by High risk customers
SELECT 
    c.full_name,
    d.device_name,
    d.status AS device_status,
    d.location
FROM devices d
JOIN customers c ON d.customer_id = c.customer_id
WHERE c.customer_id IN (
    SELECT customer_id 
    FROM risk_scores 
    WHERE risk_category IN ('High', 'Critical')
)
ORDER BY c.full_name;

-- 33.Customers with increasing transaction amounts
SELECT c.full_name, t.amount, t.transaction_date,
    LAG(t.amount) OVER (PARTITION BY t.account_id ORDER BY t.transaction_date) AS prev_amount
FROM transactions t
JOIN customers c ON t.account_id = c.customer_id
WHERE t.amount > (SELECT AVG(amount) FROM transactions);

-- 34.Top 3 Customers bytotal transaction value
SELECT full_name, total_amount FROM (
    SELECT c.full_name, SUM(t.amount) AS total_amount,
        DENSE_RANK() OVER (ORDER BY SUM(t.amount) DESC) AS rnk
    FROM transactions t
    JOIN customers c ON t.account_id = c.customer_id
    GROUP BY c.full_name
) ranked
WHERE rnk <= 3;

-- 35.Customers whose risk score is highest in their city
SELECT c.full_name, c.city, r.score
FROM risk_scores r
JOIN customers c ON r.customer_id = c.customer_id
WHERE r.score = (
    SELECT MAX(r2.score) FROM risk_scores r2
    JOIN customers c2 ON r2.customer_id = c2.customer_id
    WHERE c2.city = c.city
);

-- 36.Fraud alerts count vs system average
SELECT c.full_name, COUNT(f.alert_id) AS alert_count
FROM fraud_alerts f
JOIN customers c ON f.customer_id = c.customer_id
GROUP BY c.full_name
HAVING COUNT(f.alert_id) > (
    SELECT AVG(cnt) FROM (
        SELECT COUNT(*) AS cnt FROM fraud_alerts GROUP BY customer_id
    ) sub
);

-- 37. CTE version of Query 31: Customers whose risk score is above average
WITH avg_score AS (
    SELECT AVG(score) AS overall_avg FROM risk_scores
)
SELECT c.full_name, r.score, r.score_date,
    LAG(r.score) OVER (PARTITION BY r.customer_id ORDER BY r.score_date) AS previous_score
FROM risk_scores r
JOIN customers c ON r.customer_id = c.customer_id
CROSS JOIN avg_score
WHERE r.score > avg_score.overall_avg
ORDER BY c.full_name, r.score_date;


-- 38. CTE version of Query 35: Customer with highest risk score in their city
WITH city_max AS (
    SELECT c.city, MAX(r.score) AS max_score
    FROM risk_scores r
    JOIN customers c ON r.customer_id = c.customer_id
    GROUP BY c.city
)
SELECT c.full_name, c.city, r.score
FROM risk_scores r
JOIN customers c ON r.customer_id = c.customer_id
JOIN city_max cm ON cm.city = c.city AND cm.max_score = r.score;

-- 39. Multi-level CTE: customers with RISING risk score AND above-average total transactions
WITH risk_trend AS (
    SELECT customer_id, score, score_date,
        LAG(score) OVER (PARTITION BY customer_id ORDER BY score_date) AS prev_score
    FROM risk_scores
),
rising_risk AS (
    SELECT DISTINCT customer_id FROM risk_trend WHERE score > prev_score
),
high_txn AS (
    SELECT a.customer_id, SUM(t.amount) AS total_amt
    FROM transactions t
    JOIN accounts a ON t.account_id = a.account_id
    GROUP BY a.customer_id
    HAVING SUM(t.amount) > (SELECT AVG(amount) FROM transactions)
)
SELECT c.full_name, ht.total_amt
FROM customers c
JOIN rising_risk rr ON rr.customer_id = c.customer_id
JOIN high_txn ht ON ht.customer_id = c.customer_id;

-- 40. VIEW: Flagged transactions (this becomes your data source for Python/Power BI)

DROP VIEW IF EXISTS vw_flagged_transactions;

CREATE VIEW vw_flagged_transactions AS
SELECT t.transaction_id, c.customer_id, c.full_name, c.city, t.amount, t.transaction_type,
    t.location, t.transaction_date, f.risk_level, f.alert_type
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
JOIN fraud_alerts f ON f.customer_id = c.customer_id;

DROP VIEW IF EXISTS vw_flagged_transactions;

CREATE VIEW vw_flagged_transactions AS
SELECT t.transaction_id, c.customer_id, c.full_name, c.city, t.amount, t.transaction_type,
    t.location, t.transaction_date, fa.risk_level, fa.alert_type
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
JOIN (
    SELECT customer_id, 
           MAX(risk_level) AS risk_level,
           MAX(alert_type) AS alert_type
    FROM fraud_alerts
    GROUP BY customer_id
) fa ON fa.customer_id = c.customer_id;


-- 41. VIEW: High risk customer summary
CREATE VIEW vw_high_risk_customers AS
SELECT c.customer_id, c.full_name, c.city, r.score, r.risk_category,
    COUNT(f.alert_id) AS total_alerts
FROM customers c
JOIN risk_scores r ON r.customer_id = c.customer_id
LEFT JOIN fraud_alerts f ON f.customer_id = c.customer_id
WHERE r.risk_category IN ('High','Critical')
GROUP BY c.customer_id, c.full_name, c.city, r.score, r.risk_category;

-- 42. INDEXES for performance (shows optimization awareness)
CREATE INDEX idx_transactions_account_date ON transactions(account_id, transaction_date);
CREATE INDEX idx_fraud_alerts_customer ON fraud_alerts(customer_id);
CREATE INDEX idx_risk_scores_customer_date ON risk_scores(customer_id, score_date);

-- 43. STORED PROCEDURE with OUT parameter (returns a value instead of just a result set)
DELIMITER //
CREATE PROCEDURE GetCustomerFraudCount(
    IN p_customer_id INT,
    OUT p_total_alerts INT
)
BEGIN
    SELECT COUNT(*) INTO p_total_alerts
    FROM fraud_alerts
    WHERE customer_id = p_customer_id;
END //
DELIMITER ;

-- Usage:
CALL GetCustomerFraudCount(1, @total);
SELECT @total AS total_alerts;

select count(*)from transactions;
select count(*)from login_logs;


truncate table transactions;
truncate table login_logs;

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM accounts;
SELECT COUNT(*) FROM transactions;
SELECT COUNT(*) FROM login_logs;


select*from vw_flagged_transactions;